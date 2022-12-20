//
//  Helper.swift
//  MockProject
//
//  Created by sypatra on 20/12/22.
//

import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView {

 

    func loadImageFromUrl(urlString: NSString)  {

        //Check for cached images and return out if found

            if let cachedImage = imageCache.object(forKey: urlString) as? UIImage{

                print("cache?", imageCache)

                self.image = cachedImage

                return

            }

 

            //Retrieve the images from Firebase Storage

            let url = URL(string: urlString as String)

 

            //Create an URL session

            URLSession.shared.dataTask(with: url!) { (data, response, err) in

                if let err = err{

                    print(err.localizedDescription)

                }

 

                //Continue on background thread

                DispatchQueue.main.async {

                    //Check if image exists

                    if let downloadedImage = UIImage(data: data!){

 

                        //Add image to cache

                        imageCache.setObject(downloadedImage, forKey: urlString)

 

                        //Set the image to downloaded image.

                        self.image = downloadedImage

                    }

                }

            }.resume()

    }

 

}
