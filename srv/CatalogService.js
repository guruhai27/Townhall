module.exports = cds.service.impl(async function(){
 
    const { EmployeeSet } = this.entities;
 
    //Genereic handler - Before
    this.before('UPDATE', EmployeeSet, (req,res) => {
        // if(parseFloat(req.data.salaryAmount) > 1000000){
        //     req.error(500, 'Salary cannot be more than a million');
        // }
 
    });

    //implemntation of our default value    
    this.on('setDefaultValue', async (req) => {
        return { recvdGoodies : 'N' }
    });

});

