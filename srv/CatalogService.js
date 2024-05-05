module.exports = cds.service.impl(async function(){
 
    const { EmployeeSet } = this.entities;
 
    //implemntation of our default value    
    this.on('setDefaultValue', (req) => {
            return { recvdGoodies: 'N' }
    });

});

