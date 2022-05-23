'superdeep' model code repository
Written by Marianne Bezaire, marianne.bezaire@gmail.com, www.mariannebezaire.com
Last updated on May 15, 2014

This code is associated with the publication:
Lee S, Marchionni I, Bezaire MJ, Varga C, Danielson N, Lovett-Barron M, Losonczy A, Soltesz I.
GABAergic Basket Cells Differentiate Among Hippocampal Pyramidal Cells.
Neuron, 2014. In press.
http://www.cell.com/neuron/abstract/S0896-6273%2814%2900336-5

*************************************************

To use the ModelDB model viewer with this code, run the modelview.hoc code by ...

*************************************************

To run the full model, at the command line enter:
$ cd superdeep
$ nrnivmodl # or mknrndll for windows
$ nrniv superdeep.hoc

To run the full model on a supercomputer, see the example jobscript files
in the jobscript folder. Depending on the supercomputer, you may need to
submit a jobscript in one of the following formats:

cd superdeep
$ qsub jobscripts/Santa_01.sh

OR

cd superdeep
$ sbatch jobscripts/Santa_01.sh

Check your supercomputer's User Guide for further assistance.

*************************************************

Latest versions of this code are available online at:
ModelDB: http://senselab.med.yale.edu/ModelDB/ShowModel.asp?model=153280
Open Source Brain: http://www.opensourcebrain.org/projects/nc_superdeep

This code can be used with the SimTracker tool:
http://senselab.med.yale.edu/SimToolDB/ShowTool.asp?Tool=153281

If you do not want to run this code, but want to analyze the results obtained by
running this code, the results are currently available upon request by
emailing marianne.bezaire@gmail.com

If you want to view a graphical description of the model network built
by this code, please see: 
http://www.ivansolteszlab.org/models/superdeep/graphicalmodel.html

*************************************************

For more information about this code, see:
- ModelDB Quick Start Guide.pdf (included with model code)
- SimTracker NEURON Template User Guide.pdf (included with model code)
- Lab website: http://www.ivansolteszlab.org/models/superdeep.html

*************************************************

Changelog:
2022-05: Updated MOD files to contain valid C++ and be compatible with
         the upcoming versions 8.2 and 9.0 of NEURON.
