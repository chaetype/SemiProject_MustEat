<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    
    </head>
    <body>
    
                <input name="chk" type="checkbox" onclick="checkAll(this)">
                                    
                                
                                <input  name="chk" type="checkbox" >
     
        <script type="text/javascript">
            let check = false;
            // function checkAll(){
            //     let chk = document.getElementsByName("chk[]");
            //     console.log(chk);
            //     if(check==false){
            //         check=true;
            //         for(let i=0; i<chk.length; i++){
            //             chk[i].checked=true;
            //         }
            //     }else{
            //         check=false;
            //         for(let i=0; i<chk.length; i++){
            //             chi[i].checked=false;
            //         }
            //     }
            // }
    
            function checkAll(checkAll){
                let checkboxes=document.getElementsByName("chk");
                console.log(checkboxes);
                checkboxes.forEach((checkbox)=>{
                    console.log(checkbox    );
                    checkbox.checked=checkAll.checked;
                })
            }
        
        </script>
    </body>
    </html>