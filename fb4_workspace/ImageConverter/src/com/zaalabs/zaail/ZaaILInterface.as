/*
Copyright (c) 2010 ZaaLabs, Ltd. (http://www.zaalabs.com)
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/
package com.zaalabs.zaail
{
	import flash.net.FileFilter;

	public class ZaaILInterface
	{
		
		public static const FILE_FILTER:FileFilter = new FileFilter("Images", 
			"*.bmp;" +
			"*.blp;" +
			"*.cut;" +
			"*.cur;" +
			"*.dicom;" +
			"*.dcm;" +
			"*.dcx;" +
			"*.dds;" +
			"*.exr;" + 
			"*.ftx;" +
			"*.fits;" +
			"*.gif;" +
			"*.hdr;" +
			"*.hdp;" +
			"*.icns;" +
			"*.ico;"+
			"*.icon;" +
			"*.iff;" +
			"*.ilbm;" +
			"*.iwi;" +
			"*.lif;" +
			"*.mdl;" +
			"*.mp3;" +
			"*.pbm;" +
			"*.pgm;" +
			"*.pcx;" +
			"*.pcd;" +
			"*.pic;" +
			"*.pix;" +
			"*.png;" +
			"*.pnm;" +
			"*.psd;" +
			"*.psp;" +
			"*.pxr;" +
			"*.raw;" +
			"*.rot;" +
			"*.sgi;" +
			"*.bw;" +
			"*.rgb;" +
			"*.rgba;" +
			"*.sun;" +
			"*.texture;" +
			"*.tga;" +
			"*.tpl;" +
			"*.utx;" +
			"*.vtf;" +
			"*.wad;" +
			"*.wal;" +
			"*.wbmp;" +
			"*.wdp;" +
			"*.xpm;" +
			"*.jpg;" +
			"*.jpeg;" + 
			"*.jpe;" + 
			"*.jp2;"
		);
		
		public static const IL_COLOUR_INDEX:uint =     0x1900;
		public static const IL_COLOR_INDEX:uint =      0x1900;
		public static const IL_ALPHA:uint =			0x1906;
		public static const IL_RGB:uint =              0x1907;
		public static const IL_RGBA:uint =             0x1908;
		public static const IL_BGR:uint =              0x80E0;
		public static const IL_BGRA:uint =             0x80E1;
		public static const IL_LUMINANCE:uint =        0x1909;
		public static const IL_LUMINANCE_ALPHA:uint =  0x190A;
		
		//! Data types \link Types Types\endlink
		public static const IL_BYTE:uint =           0x1400;
		public static const IL_UNSIGNED_BYTE:uint =  0x1401;
		public static const IL_SHORT:uint =          0x1402;
		public static const IL_UNSIGNED_SHORT:uint = 0x1403;
		public static const IL_INT:uint =            0x1404;
		public static const IL_UNSIGNED_INT:uint =   0x1405;
		public static const IL_FLOAT:uint =          0x1406;
		public static const IL_DOUBLE:uint =         0x140A;
		public static const IL_HALF:uint =           0x140B;
		
		
		public static const IL_VENDOR:uint =    0x1F00;
		public static const IL_LOAD_EXT:uint =  0x1F01;
		public static const IL_SAVE_EXT:uint =  0x1F02;
		
		
		//
		// IL-specific public static const':uint = s;
		//
		
		public static const IL_VERSION_1_7_8:uint =  1;
		public static const IL_VERSION:uint =        178;
		
		
		// Attribute Bits
		public static const IL_ORIGIN_BIT:uint =           0x00000001;
		public static const IL_FILE_BIT:uint =             0x00000002;
		public static const IL_PAL_BIT:uint =              0x00000004;
		public static const IL_FORMAT_BIT:uint =           0x00000008;
		public static const IL_TYPE_BIT:uint =             0x00000010;
		public static const IL_COMPRESS_BIT:uint =         0x00000020;
		public static const IL_LOADFAIL_BIT:uint =         0x00000040;
		public static const IL_FORMAT_SPECIFIC_BIT:uint =  0x00000080;
		public static const IL_ALL_ATTRIB_BITS:uint =      0x000FFFFF;
		
		
		// Palette types
		public static const IL_PAL_NONE:uint =    0x0400;
		public static const IL_PAL_RGB24:uint =   0x0401;
		public static const IL_PAL_RGB32:uint =   0x0402;
		public static const IL_PAL_RGBA32:uint =  0x0403;
		public static const IL_PAL_BGR24:uint =   0x0404;
		public static const IL_PAL_BGR32:uint =   0x0405;
		public static const IL_PAL_BGRA32:uint =  0x0406;
		
		
		// Image types
		public static const IL_TYPE_UNKNOWN:uint =  0x0000;
		public static const IL_BMP:uint =           0x0420  //!< Microsoft Windows Bitmap - .bmp extension;
		public static const IL_CUT:uint =           0x0421  //!< Dr. Halo - .cut extension;
		public static const IL_DOOM:uint =          0x0422  //!< DooM walls - no specific extension;
		public static const IL_DOOM_FLAT:uint =     0x0423  //!< DooM flats - no specific extension;
		public static const IL_ICO:uint =           0x0424  //!< Microsoft Windows Icons and Cursors - .ico and .cur extensions;
		public static const IL_JPG:uint =           0x0425  //!< JPEG - .jpg, .jpe and .jpeg extensions;
		public static const IL_JFIF:uint =          0x0425  //!<;
		public static const IL_ILBM:uint =          0x0426  //!< Amiga IFF (FORM ILBM) - .iff, .ilbm, .lbm extensions;
		public static const IL_PCD:uint =           0x0427  //!< Kodak PhotoCD - .pcd extension;
		public static const IL_PCX:uint =           0x0428  //!< ZSoft PCX - .pcx extension;
		public static const IL_PIC:uint =           0x0429  //!< PIC - .pic extension;
		public static const IL_PNG:uint =           0x042A  //!< Portable Network Graphics - .png extension;
		public static const IL_PNM:uint =           0x042B  //!< Portable Any Map - .pbm, .pgm, .ppm and .pnm extensions;
		public static const IL_SGI:uint =           0x042C  //!< Silicon Graphics - .sgi, .bw, .rgb and .rgba extensions;
		public static const IL_TGA:uint =           0x042D  //!< TrueVision Targa File - .tga, .vda, .icb and .vst extensions;
		public static const IL_TIF:uint =           0x042E  //!< Tagged Image File Format - .tif and .tiff extensions;
		public static const IL_CHEAD:uint =         0x042F  //!< C-Style Header - .h extension;
		public static const IL_RAW:uint =           0x0430  //!< Raw Image Data - any extension;
		public static const IL_MDL:uint =           0x0431  //!< Half-Life Model Texture - .mdl extension;
		public static const IL_WAL:uint =           0x0432  //!< Quake 2 Texture - .wal extension;
		public static const IL_LIF:uint =           0x0434  //!< Homeworld Texture - .lif extension;
		public static const IL_MNG:uint =           0x0435  //!< Multiple-image Network Graphics - .mng extension;
		public static const IL_JNG:uint =           0x0435  //!< ;
		public static const IL_GIF:uint =           0x0436  //!< Graphics Interchange Format - .gif extension;
		public static const IL_DDS:uint =           0x0437  //!< DirectDraw Surface - .dds extension;
		public static const IL_DCX:uint =           0x0438  //!< ZSoft Multi-PCX - .dcx extension;
		public static const IL_PSD:uint =           0x0439  //!< Adobe PhotoShop - .psd extension;
		public static const IL_EXIF:uint =          0x043A  //!< ;
		public static const IL_PSP:uint =           0x043B  //!< PaintShop Pro - .psp extension;
		public static const IL_PIX:uint =           0x043C  //!< PIX - .pix extension;
		public static const IL_PXR:uint =           0x043D  //!< Pixar - .pxr extension;
		public static const IL_XPM:uint =           0x043E  //!< X Pixel Map - .xpm extension;
		public static const IL_HDR:uint =           0x043F  //!< Radiance High Dynamic Range - .hdr extension;
		public static const IL_ICNS:uint = 			0x0440  //!< Macintosh Icon - .icns extension;
		public static const IL_JP2:uint = 			0x0441  //!< Jpeg 2000 - .jp2 extension;
		public static const IL_EXR:uint = 			0x0442  //!< OpenEXR - .exr extension;
		public static const IL_WDP:uint = 			0x0443  //!< Microsoft HD Photo - .wdp and .hdp extension;
		public static const IL_VTF:uint = 			0x0444  //!< Valve Texture Format - .vtf extension;
		public static const IL_WBMP:uint = 			0x0445  //!< Wireless Bitmap - .wbmp extension;
		public static const IL_SUN:uint = 			0x0446  //!< Sun Raster - .sun, .ras, .rs, .im1, .im8, .im24 and .im32 extensions;
		public static const IL_IFF:uint = 			0x0447  //!< Interchange File Format - .iff extension;
		public static const IL_TPL:uint = 			0x0448  //!< Gamecube Texture - .tpl extension;
		public static const IL_FITS:uint = 			0x0449  //!< Flexible Image Transport System - .fit and .fits extensions;
		public static const IL_DICOM:uint = 		0x044A  //!< Digital Imaging and Communications in Medicine (DICOM) - .dcm and .dicom extensions;
		public static const IL_IWI:uint = 			0x044B  //!< Call of Duty Infinity Ward Image - .iwi extension;
		public static const IL_BLP:uint = 			0x044C  //!< Blizzard Texture Format - .blp extension;
		public static const IL_FTX:uint = 			0x044D  //!< Heavy Metal: FAKK2 Texture - .ftx extension;
		public static const IL_ROT:uint = 			0x044E  //!< Homeworld 2 - Relic Texture - .rot extension;
		public static const IL_TEXTURE:uint = 		0x044F  //!< Medieval II: Total War Texture - .texture extension;
		public static const IL_DPX:uint = 			0x0450  //!< Digital Picture Exchange - .dpx extension;
		public static const IL_UTX:uint = 			0x0451  //!< Unreal (and Unreal Tournament) Texture - .utx extension;
		public static const IL_MP3:uint = 			0x0452  //!< MPEG-1 Audio Layer 3 - .mp3 extension;
		
		
		public static const IL_JASC_PAL:uint =      0x0475  //!< PaintShop Pro Palette;
		
		
		// Error Types
		public static const IL_NO_ERROR:uint =              0x0000;
		public static const IL_INVALID_ENUM:uint =          0x0501;
		public static const IL_OUT_OF_MEMORY:uint =         0x0502;
		public static const IL_FORMAT_NOT_SUPPORTED:uint =  0x0503;
		public static const IL_INTERNAL_ERROR:uint =        0x0504;
		public static const IL_INVALID_VALUE:uint =         0x0505;
		public static const IL_ILLEGAL_OPERATION:uint =     0x0506;
		public static const IL_ILLEGAL_FILE_VALUE:uint =    0x0507;
		public static const IL_INVALID_FILE_HEADER:uint =   0x0508;
		public static const IL_INVALID_PARAM:uint =         0x0509;
		public static const IL_COULD_NOT_OPEN_FILE:uint =   0x050A;
		public static const IL_INVALID_EXTENSION:uint =     0x050B;
		public static const IL_FILE_ALREADY_EXISTS:uint =   0x050C;
		public static const IL_OUT_FORMAT_SAME:uint =       0x050D;
		public static const IL_STACK_OVERFLOW:uint =        0x050E;
		public static const IL_STACK_UNDERFLOW:uint =       0x050F;
		public static const IL_INVALID_CONVERSION:uint =    0x0510;
		public static const IL_BAD_DIMENSIONS:uint =        0x0511;
		public static const IL_FILE_READ_ERROR:uint =       0x0512  // 05/12/2002: Addition by Sam.;
		public static const IL_FILE_WRITE_ERROR:uint =      0x0512;
		
		public static const IL_LIB_GIF_ERROR:uint =   0x05E1;
		public static const IL_LIB_JPEG_ERROR:uint =  0x05E2;
		public static const IL_LIB_PNG_ERROR:uint =   0x05E3;
		public static const IL_LIB_TIFF_ERROR:uint =  0x05E4;
		public static const IL_LIB_MNG_ERROR:uint =   0x05E5;
		public static const IL_LIB_JP2_ERROR:uint =   0x05E6;
		public static const IL_LIB_EXR_ERROR:uint =   0x05E7;
		public static const IL_UNKNOWN_ERROR:uint =   0x05FF;
		
		
		// Origin Definitions
		public static const IL_ORIGIN_SET:uint =         0x0600;
		public static const IL_ORIGIN_LOWER_LEFT:uint =  0x0601;
		public static const IL_ORIGIN_UPPER_LEFT:uint =  0x0602;
		public static const IL_ORIGIN_MODE:uint =        0x0603;
		
		
		// Format and Type Mode Definitions
		public static const IL_FORMAT_SET:uint =   0x0610;
		public static const IL_FORMAT_MODE:uint =  0x0611;
		public static const IL_TYPE_SET:uint =     0x0612;
		public static const IL_TYPE_MODE:uint =    0x0613;
		
		
		// File definitions
		public static const IL_FILE_OVERWRITE:uint = 	0x0620;
		public static const IL_FILE_MODE:uint = 		0x0621;
		
		
		// Palette definitions
		public static const IL_CONV_PAL:uint = 			0x0630;
		
		
		// Load fail definitions
		public static const IL_DEFAULT_ON_FAIL:uint = 	0x0632;
		
		
		// Key colour and alpha definitions
		public static const IL_USE_KEY_COLOUR:uint = 	0x0635;
		public static const IL_USE_KEY_COLOR:uint = 	0x0635;
		public static const IL_BLIT_BLEND:uint = 		0x0636;
		
		
		// Interlace definitions
		public static const IL_SAVE_INTERLACED:uint = 	0x0639;
		public static const IL_INTERLACE_MODE:uint = 	0x063A;
		
		
		// Quantization definitions
		public static const IL_QUANTIZATION_MODE:uint =  0x0640;
		public static const IL_WU_QUANT:uint =           0x0641;
		public static const IL_NEU_QUANT:uint =          0x0642;
		public static const IL_NEU_QUANT_SAMPLE:uint =   0x0643;
		public static const IL_MAX_QUANT_INDEXS:uint =   0x0644 //XIX : ILint : Maximum number of colors to reduce to, default of 256. and has a range of 2-256;
		public static const IL_MAX_QUANT_INDICES:uint =  0x0644 // Redefined, since the above public static const is:uint =  misspelled;
		
		
		// Hints
		public static const IL_FASTEST:uint =           0x0660;
		public static const IL_LESS_MEM:uint =          0x0661;
		public static const IL_DONT_CARE:uint =         0x0662;
		public static const IL_MEM_SPEED_HINT:uint =    0x0665;
		public static const IL_USE_COMPRESSION:uint =   0x0666;
		public static const IL_NO_COMPRESSION:uint =    0x0667;
		public static const IL_COMPRESSION_HINT:uint =  0x0668;
		
		
		// Compression
		public static const IL_NVIDIA_COMPRESS:uint = 	0x0670;
		public static const IL_SQUISH_COMPRESS:uint = 	0x0671;
		
		
		// Subimage types
		public static const IL_SUB_NEXT:uint =    0x0680;
		public static const IL_SUB_MIPMAP:uint =  0x0681;
		public static const IL_SUB_LAYER:uint =   0x0682;
		
		
		// Compression definitions
		public static const IL_COMPRESS_MODE:uint =  0x0700;
		public static const IL_COMPRESS_NONE:uint =  0x0701;
		public static const IL_COMPRESS_RLE:uint =   0x0702;
		public static const IL_COMPRESS_LZO:uint =   0x0703;
		public static const IL_COMPRESS_ZLIB:uint =  0x0704;
		
		
		// File format-specific values
		public static const IL_TGA_CREATE_STAMP:uint =         0x0710;
		public static const IL_JPG_QUALITY:uint =              0x0711;
		public static const IL_PNG_INTERLACE:uint =            0x0712;
		public static const IL_TGA_RLE:uint =                  0x0713;
		public static const IL_BMP_RLE:uint =                  0x0714;
		public static const IL_SGI_RLE:uint =                  0x0715;
		public static const IL_TGA_ID_STRING:uint =            0x0717;
		public static const IL_TGA_AUTHNAME_STRING:uint =      0x0718;
		public static const IL_TGA_AUTHCOMMENT_STRING:uint =   0x0719;
		public static const IL_PNG_AUTHNAME_STRING:uint =      0x071A;
		public static const IL_PNG_TITLE_STRING:uint =         0x071B;
		public static const IL_PNG_DESCRIPTION_STRING:uint =   0x071C;
		public static const IL_TIF_DESCRIPTION_STRING:uint =   0x071D;
		public static const IL_TIF_HOSTCOMPUTER_STRING:uint =  0x071E;
		public static const IL_TIF_DOCUMENTNAME_STRING:uint =  0x071F;
		public static const IL_TIF_AUTHNAME_STRING:uint =      0x0720;
		public static const IL_JPG_SAVE_FORMAT:uint =          0x0721;
		public static const IL_CHEAD_HEADER_STRING:uint =      0x0722;
		public static const IL_PCD_PICNUM:uint =               0x0723;
		public static const IL_PNG_ALPHA_INDEX:uint =  0x0724 //XIX : ILint : the color in the palette at this index value (0-255) is considered transparent, -1 for no trasparent color;
		public static const IL_JPG_PROGRESSIVE:uint =          0x0725;
		public static const IL_VTF_COMP:uint =                 0x0726;
		
		
		// DXTC definitions
		public static const IL_DXTC_FORMAT:uint =       0x0705;
		public static const IL_DXT1:uint =              0x0706;
		public static const IL_DXT2:uint =              0x0707;
		public static const IL_DXT3:uint =              0x0708;
		public static const IL_DXT4:uint =              0x0709;
		public static const IL_DXT5:uint =              0x070A;
		public static const IL_DXT_NO_COMP:uint =       0x070B;
		public static const IL_KEEP_DXTC_DATA:uint =    0x070C;
		public static const IL_DXTC_DATA_FORMAT:uint =  0x070D;
		public static const IL_3DC:uint =               0x070E;
		public static const IL_RXGB:uint =              0x070F;
		public static const IL_ATI1N:uint =             0x0710;
		public static const IL_DXT1A:uint =             0x0711  // Normally the same as IL_DXT1, except for nVidia Texture Tools.;
		
		// Environment map definitions
		public static const IL_CUBEMAP_POSITIVEX:uint =  0x00000400;
		public static const IL_CUBEMAP_NEGATIVEX:uint =  0x00000800;
		public static const IL_CUBEMAP_POSITIVEY:uint =  0x00001000;
		public static const IL_CUBEMAP_NEGATIVEY:uint =  0x00002000;
		public static const IL_CUBEMAP_POSITIVEZ:uint =  0x00004000;
		public static const IL_CUBEMAP_NEGATIVEZ:uint =  0x00008000;
		public static const IL_SPHEREMAP:uint =          0x00010000;
		
		
		// Values
		public static const IL_VERSION_NUM:uint =            0x0DE2;
		public static const IL_IMAGE_WIDTH:uint =            0x0DE4;
		public static const IL_IMAGE_HEIGHT:uint =           0x0DE5;
		public static const IL_IMAGE_DEPTH:uint =            0x0DE6;
		public static const IL_IMAGE_SIZE_OF_DATA:uint =     0x0DE7;
		public static const IL_IMAGE_BPP:uint =              0x0DE8;
		public static const IL_IMAGE_BYTES_PER_PIXEL:uint =  0x0DE8;
		public static const IL_IMAGE_BITS_PER_PIXEL:uint =   0x0DE9;
		public static const IL_IMAGE_FORMAT:uint =           0x0DEA;
		public static const IL_IMAGE_TYPE:uint =             0x0DEB;
		public static const IL_PALETTE_TYPE:uint =           0x0DEC;
		public static const IL_PALETTE_SIZE:uint =           0x0DED;
		public static const IL_PALETTE_BPP:uint =            0x0DEE;
		public static const IL_PALETTE_NUM_COLS:uint =       0x0DEF;
		public static const IL_PALETTE_BASE_TYPE:uint =      0x0DF0;
		public static const IL_NUM_FACES:uint =              0x0DE1;
		public static const IL_NUM_IMAGES:uint =             0x0DF1;
		public static const IL_NUM_MIPMAPS:uint =            0x0DF2;
		public static const IL_NUM_LAYERS:uint =             0x0DF3;
		public static const IL_ACTIVE_IMAGE:uint =           0x0DF4;
		public static const IL_ACTIVE_MIPMAP:uint =          0x0DF5;
		public static const IL_ACTIVE_LAYER:uint =           0x0DF6;
		public static const IL_ACTIVE_FACE:uint =            0x0E00;
		public static const IL_CUR_IMAGE:uint =              0x0DF7;
		public static const IL_IMAGE_DURATION:uint =         0x0DF8;
		public static const IL_IMAGE_PLANESIZE:uint =        0x0DF9;
		public static const IL_IMAGE_BPC:uint =              0x0DFA;
		public static const IL_IMAGE_OFFX:uint =             0x0DFB;
		public static const IL_IMAGE_OFFY:uint =             0x0DFC;
		public static const IL_IMAGE_CUBEFLAGS:uint =        0x0DFD;
		public static const IL_IMAGE_ORIGIN:uint =           0x0DFE;
		public static const IL_IMAGE_CHANNELS:uint =         0x0DFF;

		
		public function ZaaILInterface()
		{
		}
	}
}