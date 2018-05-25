function dateToString(date){
	if (date) {
			var date =new Date(date);
			var y = date.getFullYear();
			var M = date.getMonth()+1;
			var d = date.getDate();
			return y+"-"+M+"-"+d;
			}else{
				return null;
			}
	};
	
	
function datagridOpt(url,id){
	var selRow = $("#"+id).datagrid("getSelected");
	
	if(selRow == null){
		$.messager.alert("提示","请选择行","warning");    
		return
	}
	
	var id =  selRow.id;
	$("#id").val(id);//selRow.id就是部门主键
	
	//3. 提交表单（查看）
	document.forms[0].action = url;
	document.forms[0].submit();
}

(function($){  
    $.fn.serializeJson=function(){  
        var serializeObj={};  
        var array=this.serializeArray();  
        var str=this.serialize();  
        $(array).each(function(){  
            if(serializeObj[this.name]){  
                if($.isArray(serializeObj[this.name])){  
                    serializeObj[this.name].push(this.value);  
                }else{  
                    serializeObj[this.name]=[serializeObj[this.name],this.value];  
                }  
            }else{  
                serializeObj[this.name]=this.value;   
            }  
        });  
        return serializeObj;  
    };  
})(jQuery); 
