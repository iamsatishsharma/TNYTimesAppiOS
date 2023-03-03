# TNYTimesAppiOS

# Follow and give a start :star:
Connect with me on [Linkedin](https://www.linkedin.com/in/satishsharma1/) as well to support this project. 

<h1>TNYTimesApp iOS application + MVVM + Alamofire </h1>

MVVM: Model-View-ViewModel (MVVM) is a structural design pattern that separates objects into three distinct groups: Models hold application data. 

Alamofire: Alamofire is an HTTP networking library written in Swift. 

Add Alamofire as swift package dependencies
https://github.com/Alamofire/Alamofire.git

Add SDWebImage as swift package dependencies
https://github.com/SDWebImage/SDWebImageSwiftUI.git

# Login
![Screenshot](https://github.com/sharmadevelopers/TNYTimesAppiOS/blob/main/screen_1.png?raw=true)

# Dashboard
![Screenshot](https://github.com/sharmadevelopers/TNYTimesAppiOS/blob/main/screen_2.png?raw=true)

# Detail
![Screenshot](https://github.com/sharmadevelopers/TNYTimesAppiOS/blob/main/screen_3.png?raw=true)


The code would look like this:

```
// MARK: Login

class LoginViewController: UIViewController {
    
    @IBOutlet var txt_password: UITextField!
    @IBOutlet var txt_username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func btn_login(_ sender: UIButton) {
        
        if(txt_username.text == "")
        {
            showAlert(Message: "Please enter username", controller: self)
        }
        else if(txt_password.text == "")
        {
            showAlert(Message: "Please enter password", controller: self)
        }
        else {           
            self.view.activityStartAnimating()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
                self!.view.activityStopAnimating()
                let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "dashboardVC") as? DashboardViewController
                
                self?.navigationController?.pushViewController(vc!, animated: true)
                
            }
        }
    }
    
}

```

```
// MARK: Initializing
lazy var topStories: topServiceViewModel = {
        return topServiceViewModel()
    }()
    lazy var popularStories: popularStoryViewModel = {
        return popularStoryViewModel()
    }()
    
    lazy var articles: articleViewModel = {
        return articleViewModel()
    }()

```

```
// MARK: Popular Stories
func setupUI() {
        self.topStories.getTopStories()
        self.popularStories.getPopularStorie(FilterBy: "", Page: 1)

        //self.articles.getArticles(FilterBy: "", Page: 0)
        //self.popularStories.getPopularStories()

    }
    
```

```
// MARK: Load Stories in table
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(popularStories.popularStoryResult?.results?.count ?? 0)
        
        return popularStories.popularStoryResult?.results?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "populararticles", for: indexPath) as! TableViewCell
        cell.lbl_articleTitle.text = popularStories.popularStoryResult?.results?[indexPath.row].title ?? ""
        cell.lbl_articleDescription.text = popularStories.popularStoryResult?.results?[indexPath.row].byline ?? ""
        cell.published_date.text = popularStories.popularStoryResult?.results?[indexPath.row].published_date ?? ""
        
        if (popularStories.popularStoryResult?.results?[indexPath.row].media?.count ?? 0 > 0)
        {
            let imgstring =  "\(popularStories.popularStoryResult?.results?[indexPath.row].media?[0].mediametadata?[0].url ?? "")"
            
            let url =  URL(string : imgstring.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed) ?? "")
            
            cell.articleImage.sd_setImage(with: url, placeholderImage:nil)
        }
        return cell
    }
   
 ```
    
```
 // MARK: Navigate to detail screen

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view.activityStartAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self!.view.activityStopAnimating()
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "dashboardDetailVC") as? DashboardDetailViewController
            vc?.presults = self?.popularStories.popularStoryResult?.results?[indexPath.row]
            self?.navigationController?.pushViewController(vc!, animated: true)
            
        }
    }
     
```
      
# Thanks

[SDWebImage](https://github.com/SDWebImage/SDWebImageSwiftUI.git)

[Alamofire](https://github.com/Alamofire/Alamofire)


# License

TNYTimesAppiOS is available under the MIT license. See the LICENSE file for more info.

      
      
