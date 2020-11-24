const ApiBase = 'http://localhost/soccershop/src/backend/Model/sentmsg.php'

const API = {
    upload: async (name, msg) => {
        const formData = new FormData();
        formData.append('name', name);
        formData.append('msg', msg);

        await fetch (ApiBase+'/upload', {
            method: 'POST',
            body:formData
        });
    }
}

export default API;