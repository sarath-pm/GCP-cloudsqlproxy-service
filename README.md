# Cloud SQL Auth Proxy as a Systemd Setup Script

In the realm of cloud computing, establishing secure and reliable connections to databases is crucial for application performance and data integrity. Google Cloud SQL Auth Proxy simplifies this process by allowing secure connections to Google Cloud SQL instances without the need for external IP addresses. If you are new to CloudSQL Auth Proxy kindly refer this [official Google Document](https://cloud.google.com/sql/docs/mysql/sql-proxy).

This shell script automates the setup of Google Cloud SQL Auth Proxy on an Ubuntu system. For more detailed information, please refer to my blog on [Dev.to](https://dev.to/sarath-pm/secure-cloudsql-connectivity-with-google-cloud-sql-auth-proxy-as-systemd-3gg2).

## Prerequisites

- Ubuntu instance
- GCP CloudSQL INSTANCE_CONNECTION_NAME

## Usage

Step 1: Clone the repository:

   ```bash
   git clone https://github.com/sarath-pm/gcp-cloudsqlproxy-systemd.git
   ```
   
Step 2: Navigate to the script directory:

   ```bash
   cd gcp-cloudsqlproxy-systemd
   ```

Step 3: Run the Script

   ```bash
   chmod +x cloudsqlproxy.sh
   ./cloudsqlproxy.sh INSTANCE_CONNECTION_NAME PORT
   ```
   Example: `./cloudsqlproxy.sh projectid:region:sqlinstance 3306`

## Connect with Me
<br>
<p align="center">
<a href="https://www.linkedin.com/in/sarath-p-m/" target="blank"><img align="center" src="https://i.pinimg.com/originals/de/b4/6f/deb46f02a59e3b3a2aa58fac16290d63.gif" alt="sarath-p-m" height="40" width="45" /></a>
&nbsp;<a href="https://dev.to/sarath-pm" target="blank"><img align="center" src="https://res.cloudinary.com/practicaldev/image/fetch/s--0UiMFgbU--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_66%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/0vbfzhjcsjs0u716x88o.gif" alt="sarath_pm" height="40" width="47" /></a>
&nbsp;<a href="https://sarath-pm.medium.com/" target="blank"><img align="center" src="https://github.com/sarath-pm/sarath-pm/assets/86669668/09a4f7ca-c73f-481c-ac8f-d751a91fa062" alt="sarath_pm" height="40" width="47" /></a>  
&nbsp;<a href="mailto:sarath.pm@outlook.com" target="blank"><img align="center" src="https://user-images.githubusercontent.com/86669668/171339003-ef5b5c96-eac8-478c-a9cc-318ca9477fce.gif" alt="sarath.pm@outlook.com" width="40" /></a>      
&nbsp;<a href="https://www.hackerrank.com/sarath_pm" target="blank"><img align="center" src="https://user-images.githubusercontent.com/86669668/171338019-50f8c8de-e1ac-4651-b2cf-1901eceb2e51.gif" alt="sarath_pm" height="40" width="45"></a>
&nbsp;<a href="https://stackoverflow.com/users/19234611" target="blank"><img align="center" src="https://user-images.githubusercontent.com/86669668/171333456-ac1d5e66-bd90-468b-a1bf-c030ba6a1fed.gif" alt="19234611" width="40" /></a>
&nbsp;<a href="https://join.skype.com/invite/mBeSnZ9ZogbI" target="_blank"><img align="center" src="https://user-images.githubusercontent.com/86669668/176819343-c1894b0e-8622-4a39-a34c-fd4125d32d4d.gif" alt="sarath2375" width="40" /></a>
</p>

<br>

<p align="center">
<a href="https://www.buymeacoffee.com/sarathpm" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
</p>

   
