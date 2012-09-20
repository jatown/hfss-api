% ----------------------------------------------------------------------------
% function hfssAssignRadiation(fid, Name, Object)
% 
% Description :
% -------------
% Creates the VB Script necessary to assign the radiation boundary condition
% to a (closed) Object.
%
% Parameters :
% ------------
% fid     - file identifier of the HFSS script file.
% Name    - name of the radiation boundary condition (under HFSS).
% Object  - object to which the radiation boundary conditions needs to be 
%           applied.
% 
% Note :
% ------
% This function cannot be used to apply radiation boundary conditions to 
% individual faces of an object.
%
% Example :
% ---------
% fid = fopen('myantenna.vbs', 'wt');
% ... 
% hfssAssignRadiation(fid, 'ABC', 'AirBox');
% ----------------------------------------------------------------------------

% ----------------------------------------------------------------------------
% This file is part of HFSS-MATLAB-API.
%
% HFSS-MATLAB-API is free software; you can redistribute it and/or modify it 
% under the terms of the GNU General Public License as published by the Free 
% Software Foundation; either version 2 of the License, or (at your option) 
% any later version.
%
% HFSS-MATLAB-API is distributed in the hope that it will be useful, but 
% WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
% or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License 
% for more details.
%
% You should have received a copy of the GNU General Public License along with
% Foobar; if not, write to the Free Software Foundation, Inc., 59 Temple 
% Place, Suite 330, Boston, MA  02111-1307  USA
%
% Copyright 2004, Vijay Ramasami (rvc@ku.edu)
% ----------------------------------------------------------------------------


function hfssAssignRadiation(fid, Name, BoxObject)

fprintf(fid, 'Set oModule = oDesign.GetModule("BoundarySetup")\n');
fprintf(fid, 'oModule.AssignRadiation _\n');
fprintf(fid, 'Array("NAME:%s", _\n', Name);
fprintf(fid, '"Objects:=", Array("%s"))\n', BoxObject);
