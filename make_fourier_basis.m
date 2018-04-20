% function [F] = make_fourier_basis(N)
%
% Constructs the discrete Fourier change of basis matrix of dimensions NxN.
% The new basis moves the signal into the frequency domain.
%
% N.......number of signals in C^N
% k.......index of the signal
% n.......index of the element within each signal

function [F] = make_fourier_basis(N)
	F = zeros(N, N);
	% go over signal indices
	for k = 0:N-1
	% go over elements within each vector
		for n = 0:N-1
			% compute next element
			el = e^(j*(2*pi/N)*n*k);
			% add element to DFT matrix
			F(n + 1, k + 1) = el;
		end
	end
endfunction
