## Copyright (C) 2023 Admin
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} gauss_band_reject_filter (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Admin <Admin@DESKTOP-4386PS0>
## Created: 2023-05-22

function filtered_image = gauss_band_reject_filter(image, size, radius)
    % Llogaritja e qendrës së imazhit
    center = floor(size(image) / 2) + 1;

    % Llogaritja e distancave të pikave prej qendrës së imazhit
    distances = sqrt(sum((ndgrid(1:size(image, 1), 1:size(image, 2)) - center).^2, 3));

    % Krijimi i maskës së filtrit
    mask = ones(size(image));
    mask(distances >= center(1) - size/2 & distances <= center(1) + size/2 & distances <= radius) = 0;

    % Aplikimi i filtrit Gauss përmes maskës
    filtered_image = imgaussfilt(image, size/2) .* mask;
end