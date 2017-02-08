# 9.1 How the web works

## Error Codes

1.  Error 404
    * Not found
    * Occurs when a requested file cannot be found. Often caused by typing in the wrong location but is also caused by the file not actually being in the location due to an error
2.  Error 403
    * Forbidden
    * This error can be caused by the client machine not being in the server white-list, an invalid or expired certificate (Can happen from the system time not being correct) or quite possibly a permission error on the server
3.  Error 500
    * Internal Server Error
    * Generic error for server side issues when the bellow codes are not returned
4.  Error 503
    * Service Unavailable
    * This error tells us that the server is not available, could be caused by the server being restarted, in the middle of initialization, down for maintenance or just overwhelmed by requests
5.  Error 504
    * Gateway Timeout
    * There is a problem with wither the proxy or the DNS leading to the server and can often be taken care of by just resending the request

## GET vs. POST

GET - This command is used to pull a file from a server e.g. requesting the website's mail HTML file(Read)
POST - This command is used to send files and commands to the server e.g. Storing a user's selections on a form (Write)

## Cookies (Yum!)

Cookies are small files stored by websites on the user's machine. They are used to store state information about the session like form fill information, pages visited, cart status and so on