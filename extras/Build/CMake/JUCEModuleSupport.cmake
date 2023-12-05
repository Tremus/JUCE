# ==============================================================================
#
#  This file is part of the JUCE library.
#  Copyright (c) 2022 - Raw Material Software Limited
#
#  JUCE is an open source library subject to commercial or open-source
#  licensing.
#
#  By using JUCE, you agree to the terms of both the JUCE 7 End-User License
#  Agreement and JUCE Privacy Policy.
#
#  End User License Agreement: www.juce.com/juce-7-licence
#  Privacy Policy: www.juce.com/juce-privacy-policy
#
#  Or: You may also use this code under the terms of the GPL v3 (see
#  www.gnu.org/licenses).
#
#  JUCE IS PROVIDED "AS IS" WITHOUT ANY WARRANTY, AND ALL WARRANTIES, WHETHER
#  EXPRESSED OR IMPLIED, INCLUDING MERCHANTABILITY AND FITNESS FOR PURPOSE, ARE
#  DISCLAIMED.
#
# ==============================================================================

# ==================================================================================================
# JUCE Modules Support Helper Functions
#
# In this file, functions intended for use by end-users have the prefix `juce_`.
# Functions beginning with an underscore should be considered private and susceptible to
# change, so don't call them directly.
#
# See the readme at `docs/CMake API.md` for more information about CMake usage,
# including documentation of the public functions in this file.
# ==================================================================================================

include_guard(GLOBAL)
cmake_minimum_required(VERSION 3.22)

# ==================================================================================================

set(files_juce_analytics
juce_analytics/analytics/juce_Analytics.cpp
juce_analytics/analytics/juce_Analytics.h
juce_analytics/analytics/juce_ButtonTracker.cpp
juce_analytics/analytics/juce_ButtonTracker.h
juce_analytics/destinations/juce_AnalyticsDestination.h
juce_analytics/destinations/juce_ThreadedAnalyticsDestination.cpp
juce_analytics/destinations/juce_ThreadedAnalyticsDestination.h
juce_analytics/juce_analytics.cpp
juce_analytics/juce_analytics.h
)
set(files_juce_audio_basics
juce_audio_basics/audio_play_head/juce_AudioPlayHead.cpp
juce_audio_basics/audio_play_head/juce_AudioPlayHead.h
juce_audio_basics/buffers/juce_AudioChannelSet.cpp
juce_audio_basics/buffers/juce_AudioChannelSet.h
juce_audio_basics/buffers/juce_AudioDataConverters.cpp
juce_audio_basics/buffers/juce_AudioDataConverters.h
juce_audio_basics/buffers/juce_AudioProcessLoadMeasurer.cpp
juce_audio_basics/buffers/juce_AudioProcessLoadMeasurer.h
juce_audio_basics/buffers/juce_AudioSampleBuffer.h
juce_audio_basics/buffers/juce_FloatVectorOperations.cpp
juce_audio_basics/buffers/juce_FloatVectorOperations.h
juce_audio_basics/juce_audio_basics.cpp
juce_audio_basics/juce_audio_basics.h
juce_audio_basics/juce_audio_basics.mm
juce_audio_basics/midi/juce_MidiBuffer.cpp
juce_audio_basics/midi/juce_MidiBuffer.h
juce_audio_basics/midi/juce_MidiDataConcatenator.h
juce_audio_basics/midi/juce_MidiFile.cpp
juce_audio_basics/midi/juce_MidiFile.h
juce_audio_basics/midi/juce_MidiKeyboardState.cpp
juce_audio_basics/midi/juce_MidiKeyboardState.h
juce_audio_basics/midi/juce_MidiMessage.cpp
juce_audio_basics/midi/juce_MidiMessage.h
juce_audio_basics/midi/juce_MidiMessageSequence.cpp
juce_audio_basics/midi/juce_MidiMessageSequence.h
juce_audio_basics/midi/juce_MidiRPN.cpp
juce_audio_basics/midi/juce_MidiRPN.h
juce_audio_basics/midi/ump/juce_UMP.h
juce_audio_basics/midi/ump/juce_UMPBytesOnGroup.h
juce_audio_basics/midi/ump/juce_UMPConversion.h
juce_audio_basics/midi/ump/juce_UMPConverters.h
juce_audio_basics/midi/ump/juce_UMPDeviceInfo.h
juce_audio_basics/midi/ump/juce_UMPDispatcher.h
juce_audio_basics/midi/ump/juce_UMPFactory.h
juce_audio_basics/midi/ump/juce_UMPIterator.cpp
juce_audio_basics/midi/ump/juce_UMPIterator.h
juce_audio_basics/midi/ump/juce_UMPMidi1ToBytestreamTranslator.h
juce_audio_basics/midi/ump/juce_UMPMidi1ToMidi2DefaultTranslator.cpp
juce_audio_basics/midi/ump/juce_UMPMidi1ToMidi2DefaultTranslator.h
juce_audio_basics/midi/ump/juce_UMPProtocols.h
juce_audio_basics/midi/ump/juce_UMPReceiver.h
juce_audio_basics/midi/ump/juce_UMPSysEx7.cpp
juce_audio_basics/midi/ump/juce_UMPSysEx7.h
juce_audio_basics/midi/ump/juce_UMPUtils.cpp
juce_audio_basics/midi/ump/juce_UMPUtils.h
juce_audio_basics/midi/ump/juce_UMPView.cpp
juce_audio_basics/midi/ump/juce_UMPView.h
juce_audio_basics/midi/ump/juce_UMP_test.cpp
juce_audio_basics/midi/ump/juce_UMPacket.h
juce_audio_basics/midi/ump/juce_UMPackets.h
juce_audio_basics/mpe/juce_MPEInstrument.cpp
juce_audio_basics/mpe/juce_MPEInstrument.h
juce_audio_basics/mpe/juce_MPEMessages.cpp
juce_audio_basics/mpe/juce_MPEMessages.h
juce_audio_basics/mpe/juce_MPENote.cpp
juce_audio_basics/mpe/juce_MPENote.h
juce_audio_basics/mpe/juce_MPESynthesiser.cpp
juce_audio_basics/mpe/juce_MPESynthesiser.h
juce_audio_basics/mpe/juce_MPESynthesiserBase.cpp
juce_audio_basics/mpe/juce_MPESynthesiserBase.h
juce_audio_basics/mpe/juce_MPESynthesiserVoice.cpp
juce_audio_basics/mpe/juce_MPESynthesiserVoice.h
juce_audio_basics/mpe/juce_MPEUtils.cpp
juce_audio_basics/mpe/juce_MPEUtils.h
juce_audio_basics/mpe/juce_MPEValue.cpp
juce_audio_basics/mpe/juce_MPEValue.h
juce_audio_basics/mpe/juce_MPEZoneLayout.cpp
juce_audio_basics/mpe/juce_MPEZoneLayout.h
juce_audio_basics/native/juce_AudioWorkgroup_mac.h
juce_audio_basics/native/juce_CoreAudioLayouts_mac.h
juce_audio_basics/native/juce_CoreAudioTimeConversions_mac.h
juce_audio_basics/sources/juce_AudioSource.h
juce_audio_basics/sources/juce_BufferingAudioSource.cpp
juce_audio_basics/sources/juce_BufferingAudioSource.h
juce_audio_basics/sources/juce_ChannelRemappingAudioSource.cpp
juce_audio_basics/sources/juce_ChannelRemappingAudioSource.h
juce_audio_basics/sources/juce_IIRFilterAudioSource.cpp
juce_audio_basics/sources/juce_IIRFilterAudioSource.h
juce_audio_basics/sources/juce_MemoryAudioSource.cpp
juce_audio_basics/sources/juce_MemoryAudioSource.h
juce_audio_basics/sources/juce_MixerAudioSource.cpp
juce_audio_basics/sources/juce_MixerAudioSource.h
juce_audio_basics/sources/juce_PositionableAudioSource.cpp
juce_audio_basics/sources/juce_PositionableAudioSource.h
juce_audio_basics/sources/juce_ResamplingAudioSource.cpp
juce_audio_basics/sources/juce_ResamplingAudioSource.h
juce_audio_basics/sources/juce_ReverbAudioSource.cpp
juce_audio_basics/sources/juce_ReverbAudioSource.h
juce_audio_basics/sources/juce_ToneGeneratorAudioSource.cpp
juce_audio_basics/sources/juce_ToneGeneratorAudioSource.h
juce_audio_basics/synthesisers/juce_Synthesiser.cpp
juce_audio_basics/synthesisers/juce_Synthesiser.h
juce_audio_basics/utilities/juce_ADSR.h
juce_audio_basics/utilities/juce_ADSR_test.cpp
juce_audio_basics/utilities/juce_AudioWorkgroup.cpp
juce_audio_basics/utilities/juce_AudioWorkgroup.h
juce_audio_basics/utilities/juce_Decibels.h
juce_audio_basics/utilities/juce_GenericInterpolator.h
juce_audio_basics/utilities/juce_IIRFilter.cpp
juce_audio_basics/utilities/juce_IIRFilter.h
juce_audio_basics/utilities/juce_Interpolators.cpp
juce_audio_basics/utilities/juce_Interpolators.h
juce_audio_basics/utilities/juce_LagrangeInterpolator.cpp
juce_audio_basics/utilities/juce_Reverb.h
juce_audio_basics/utilities/juce_SmoothedValue.cpp
juce_audio_basics/utilities/juce_SmoothedValue.h
juce_audio_basics/utilities/juce_WindowedSincInterpolator.cpp
)
set(files_juce_audio_devices
juce_audio_devices/audio_io/juce_AudioDeviceManager.cpp
juce_audio_devices/audio_io/juce_AudioDeviceManager.h
juce_audio_devices/audio_io/juce_AudioIODevice.cpp
juce_audio_devices/audio_io/juce_AudioIODevice.h
juce_audio_devices/audio_io/juce_AudioIODeviceType.cpp
juce_audio_devices/audio_io/juce_AudioIODeviceType.h
juce_audio_devices/audio_io/juce_SampleRateHelpers.cpp
juce_audio_devices/audio_io/juce_SystemAudioVolume.h
juce_audio_devices/juce_audio_devices.cpp
juce_audio_devices/juce_audio_devices.h
juce_audio_devices/juce_audio_devices.mm
juce_audio_devices/midi_io/juce_MidiDevices.cpp
juce_audio_devices/midi_io/juce_MidiDevices.h
juce_audio_devices/midi_io/juce_MidiMessageCollector.cpp
juce_audio_devices/midi_io/juce_MidiMessageCollector.h
juce_audio_devices/midi_io/ump/juce_UMPBytestreamInputHandler.h
juce_audio_devices/midi_io/ump/juce_UMPU32InputHandler.h
juce_audio_devices/native/java/app/com/rmsl/juce/JuceMidiSupport.java
juce_audio_devices/native/juce_ALSA_linux.cpp
juce_audio_devices/native/juce_ASIO_windows.cpp
juce_audio_devices/native/juce_Audio_android.cpp
juce_audio_devices/native/juce_Audio_ios.cpp
juce_audio_devices/native/juce_Audio_ios.h
juce_audio_devices/native/juce_Bela_linux.cpp
juce_audio_devices/native/juce_CoreAudio_mac.cpp
juce_audio_devices/native/juce_CoreMidi_mac.mm
juce_audio_devices/native/juce_DirectSound_windows.cpp
juce_audio_devices/native/juce_HighPerformanceAudioHelpers_android.h
juce_audio_devices/native/juce_JackAudio_linux.cpp
juce_audio_devices/native/juce_Midi_android.cpp
juce_audio_devices/native/juce_Midi_linux.cpp
juce_audio_devices/native/juce_Midi_windows.cpp
juce_audio_devices/native/juce_Oboe_android.cpp
juce_audio_devices/native/juce_OpenSL_android.cpp
juce_audio_devices/native/juce_WASAPI_windows.cpp
juce_audio_devices/native/oboe/CMakeLists.txt
juce_audio_devices/native/oboe/LICENSE
juce_audio_devices/native/oboe/README.md
juce_audio_devices/native/oboe/include/oboe/AudioStream.h
juce_audio_devices/native/oboe/include/oboe/AudioStreamBase.h
juce_audio_devices/native/oboe/include/oboe/AudioStreamBuilder.h
juce_audio_devices/native/oboe/include/oboe/AudioStreamCallback.h
juce_audio_devices/native/oboe/include/oboe/Definitions.h
juce_audio_devices/native/oboe/include/oboe/LatencyTuner.h
juce_audio_devices/native/oboe/include/oboe/Oboe.h
juce_audio_devices/native/oboe/include/oboe/ResultWithValue.h
juce_audio_devices/native/oboe/include/oboe/StabilizedCallback.h
juce_audio_devices/native/oboe/include/oboe/Utilities.h
juce_audio_devices/native/oboe/include/oboe/Version.h
juce_audio_devices/native/oboe/src/aaudio/AAudioExtensions.h
juce_audio_devices/native/oboe/src/aaudio/AAudioLoader.cpp
juce_audio_devices/native/oboe/src/aaudio/AAudioLoader.h
juce_audio_devices/native/oboe/src/aaudio/AudioStreamAAudio.cpp
juce_audio_devices/native/oboe/src/aaudio/AudioStreamAAudio.h
juce_audio_devices/native/oboe/src/common/AudioClock.h
juce_audio_devices/native/oboe/src/common/AudioSourceCaller.cpp
juce_audio_devices/native/oboe/src/common/AudioSourceCaller.h
juce_audio_devices/native/oboe/src/common/AudioStream.cpp
juce_audio_devices/native/oboe/src/common/AudioStreamBuilder.cpp
juce_audio_devices/native/oboe/src/common/DataConversionFlowGraph.cpp
juce_audio_devices/native/oboe/src/common/DataConversionFlowGraph.h
juce_audio_devices/native/oboe/src/common/FilterAudioStream.cpp
juce_audio_devices/native/oboe/src/common/FilterAudioStream.h
juce_audio_devices/native/oboe/src/common/FixedBlockAdapter.cpp
juce_audio_devices/native/oboe/src/common/FixedBlockAdapter.h
juce_audio_devices/native/oboe/src/common/FixedBlockReader.cpp
juce_audio_devices/native/oboe/src/common/FixedBlockReader.h
juce_audio_devices/native/oboe/src/common/FixedBlockWriter.cpp
juce_audio_devices/native/oboe/src/common/FixedBlockWriter.h
juce_audio_devices/native/oboe/src/common/LatencyTuner.cpp
juce_audio_devices/native/oboe/src/common/MonotonicCounter.h
juce_audio_devices/native/oboe/src/common/OboeDebug.h
juce_audio_devices/native/oboe/src/common/QuirksManager.cpp
juce_audio_devices/native/oboe/src/common/QuirksManager.h
juce_audio_devices/native/oboe/src/common/SourceFloatCaller.cpp
juce_audio_devices/native/oboe/src/common/SourceFloatCaller.h
juce_audio_devices/native/oboe/src/common/SourceI16Caller.cpp
juce_audio_devices/native/oboe/src/common/SourceI16Caller.h
juce_audio_devices/native/oboe/src/common/SourceI24Caller.cpp
juce_audio_devices/native/oboe/src/common/SourceI24Caller.h
juce_audio_devices/native/oboe/src/common/SourceI32Caller.cpp
juce_audio_devices/native/oboe/src/common/SourceI32Caller.h
juce_audio_devices/native/oboe/src/common/StabilizedCallback.cpp
juce_audio_devices/native/oboe/src/common/Trace.cpp
juce_audio_devices/native/oboe/src/common/Trace.h
juce_audio_devices/native/oboe/src/common/Utilities.cpp
juce_audio_devices/native/oboe/src/common/Version.cpp
juce_audio_devices/native/oboe/src/fifo/FifoBuffer.cpp
juce_audio_devices/native/oboe/src/fifo/FifoBuffer.h
juce_audio_devices/native/oboe/src/fifo/FifoController.cpp
juce_audio_devices/native/oboe/src/fifo/FifoController.h
juce_audio_devices/native/oboe/src/fifo/FifoControllerBase.cpp
juce_audio_devices/native/oboe/src/fifo/FifoControllerBase.h
juce_audio_devices/native/oboe/src/fifo/FifoControllerIndirect.cpp
juce_audio_devices/native/oboe/src/fifo/FifoControllerIndirect.h
juce_audio_devices/native/oboe/src/flowgraph/ChannelCountConverter.cpp
juce_audio_devices/native/oboe/src/flowgraph/ChannelCountConverter.h
juce_audio_devices/native/oboe/src/flowgraph/ClipToRange.cpp
juce_audio_devices/native/oboe/src/flowgraph/ClipToRange.h
juce_audio_devices/native/oboe/src/flowgraph/FlowGraphNode.cpp
juce_audio_devices/native/oboe/src/flowgraph/FlowGraphNode.h
juce_audio_devices/native/oboe/src/flowgraph/FlowgraphUtilities.h
juce_audio_devices/native/oboe/src/flowgraph/ManyToMultiConverter.cpp
juce_audio_devices/native/oboe/src/flowgraph/ManyToMultiConverter.h
juce_audio_devices/native/oboe/src/flowgraph/MonoToMultiConverter.cpp
juce_audio_devices/native/oboe/src/flowgraph/MonoToMultiConverter.h
juce_audio_devices/native/oboe/src/flowgraph/MultiToMonoConverter.cpp
juce_audio_devices/native/oboe/src/flowgraph/MultiToMonoConverter.h
juce_audio_devices/native/oboe/src/flowgraph/RampLinear.cpp
juce_audio_devices/native/oboe/src/flowgraph/RampLinear.h
juce_audio_devices/native/oboe/src/flowgraph/SampleRateConverter.cpp
juce_audio_devices/native/oboe/src/flowgraph/SampleRateConverter.h
juce_audio_devices/native/oboe/src/flowgraph/SinkFloat.cpp
juce_audio_devices/native/oboe/src/flowgraph/SinkFloat.h
juce_audio_devices/native/oboe/src/flowgraph/SinkI16.cpp
juce_audio_devices/native/oboe/src/flowgraph/SinkI16.h
juce_audio_devices/native/oboe/src/flowgraph/SinkI24.cpp
juce_audio_devices/native/oboe/src/flowgraph/SinkI24.h
juce_audio_devices/native/oboe/src/flowgraph/SinkI32.cpp
juce_audio_devices/native/oboe/src/flowgraph/SinkI32.h
juce_audio_devices/native/oboe/src/flowgraph/SourceFloat.cpp
juce_audio_devices/native/oboe/src/flowgraph/SourceFloat.h
juce_audio_devices/native/oboe/src/flowgraph/SourceI16.cpp
juce_audio_devices/native/oboe/src/flowgraph/SourceI16.h
juce_audio_devices/native/oboe/src/flowgraph/SourceI24.cpp
juce_audio_devices/native/oboe/src/flowgraph/SourceI24.h
juce_audio_devices/native/oboe/src/flowgraph/SourceI32.cpp
juce_audio_devices/native/oboe/src/flowgraph/SourceI32.h
juce_audio_devices/native/oboe/src/flowgraph/resampler/HyperbolicCosineWindow.h
juce_audio_devices/native/oboe/src/flowgraph/resampler/IntegerRatio.cpp
juce_audio_devices/native/oboe/src/flowgraph/resampler/IntegerRatio.h
juce_audio_devices/native/oboe/src/flowgraph/resampler/KaiserWindow.h
juce_audio_devices/native/oboe/src/flowgraph/resampler/LinearResampler.cpp
juce_audio_devices/native/oboe/src/flowgraph/resampler/LinearResampler.h
juce_audio_devices/native/oboe/src/flowgraph/resampler/MultiChannelResampler.cpp
juce_audio_devices/native/oboe/src/flowgraph/resampler/MultiChannelResampler.h
juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResampler.cpp
juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResampler.h
juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerMono.cpp
juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerMono.h
juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerStereo.cpp
juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerStereo.h
juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResampler.cpp
juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResampler.h
juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResamplerStereo.cpp
juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResamplerStereo.h
juce_audio_devices/native/oboe/src/opensles/AudioInputStreamOpenSLES.cpp
juce_audio_devices/native/oboe/src/opensles/AudioInputStreamOpenSLES.h
juce_audio_devices/native/oboe/src/opensles/AudioOutputStreamOpenSLES.cpp
juce_audio_devices/native/oboe/src/opensles/AudioOutputStreamOpenSLES.h
juce_audio_devices/native/oboe/src/opensles/AudioStreamBuffered.cpp
juce_audio_devices/native/oboe/src/opensles/AudioStreamBuffered.h
juce_audio_devices/native/oboe/src/opensles/AudioStreamOpenSLES.cpp
juce_audio_devices/native/oboe/src/opensles/AudioStreamOpenSLES.h
juce_audio_devices/native/oboe/src/opensles/EngineOpenSLES.cpp
juce_audio_devices/native/oboe/src/opensles/EngineOpenSLES.h
juce_audio_devices/native/oboe/src/opensles/OpenSLESUtilities.cpp
juce_audio_devices/native/oboe/src/opensles/OpenSLESUtilities.h
juce_audio_devices/native/oboe/src/opensles/OutputMixerOpenSLES.cpp
juce_audio_devices/native/oboe/src/opensles/OutputMixerOpenSLES.h
juce_audio_devices/sources/juce_AudioSourcePlayer.cpp
juce_audio_devices/sources/juce_AudioSourcePlayer.h
juce_audio_devices/sources/juce_AudioTransportSource.cpp
juce_audio_devices/sources/juce_AudioTransportSource.h
)
set(files_juce_audio_formats
juce_audio_formats/codecs/flac/Flac Licence.txt
juce_audio_formats/codecs/flac/all.h
juce_audio_formats/codecs/flac/alloc.h
juce_audio_formats/codecs/flac/assert.h
juce_audio_formats/codecs/flac/callback.h
juce_audio_formats/codecs/flac/compat.h
juce_audio_formats/codecs/flac/endswap.h
juce_audio_formats/codecs/flac/export.h
juce_audio_formats/codecs/flac/format.h
juce_audio_formats/codecs/flac/libFLAC/bitmath.c
juce_audio_formats/codecs/flac/libFLAC/bitreader.c
juce_audio_formats/codecs/flac/libFLAC/bitwriter.c
juce_audio_formats/codecs/flac/libFLAC/cpu.c
juce_audio_formats/codecs/flac/libFLAC/crc.c
juce_audio_formats/codecs/flac/libFLAC/fixed.c
juce_audio_formats/codecs/flac/libFLAC/float.c
juce_audio_formats/codecs/flac/libFLAC/format.c
juce_audio_formats/codecs/flac/libFLAC/include/private/all.h
juce_audio_formats/codecs/flac/libFLAC/include/private/bitmath.h
juce_audio_formats/codecs/flac/libFLAC/include/private/bitreader.h
juce_audio_formats/codecs/flac/libFLAC/include/private/bitwriter.h
juce_audio_formats/codecs/flac/libFLAC/include/private/cpu.h
juce_audio_formats/codecs/flac/libFLAC/include/private/crc.h
juce_audio_formats/codecs/flac/libFLAC/include/private/fixed.h
juce_audio_formats/codecs/flac/libFLAC/include/private/float.h
juce_audio_formats/codecs/flac/libFLAC/include/private/format.h
juce_audio_formats/codecs/flac/libFLAC/include/private/lpc.h
juce_audio_formats/codecs/flac/libFLAC/include/private/md5.h
juce_audio_formats/codecs/flac/libFLAC/include/private/memory.h
juce_audio_formats/codecs/flac/libFLAC/include/private/metadata.h
juce_audio_formats/codecs/flac/libFLAC/include/private/stream_encoder.h
juce_audio_formats/codecs/flac/libFLAC/include/private/stream_encoder_framing.h
juce_audio_formats/codecs/flac/libFLAC/include/private/window.h
juce_audio_formats/codecs/flac/libFLAC/include/protected/all.h
juce_audio_formats/codecs/flac/libFLAC/include/protected/stream_decoder.h
juce_audio_formats/codecs/flac/libFLAC/include/protected/stream_encoder.h
juce_audio_formats/codecs/flac/libFLAC/lpc_flac.c
juce_audio_formats/codecs/flac/libFLAC/md5.c
juce_audio_formats/codecs/flac/libFLAC/memory.c
juce_audio_formats/codecs/flac/libFLAC/stream_decoder.c
juce_audio_formats/codecs/flac/libFLAC/stream_encoder.c
juce_audio_formats/codecs/flac/libFLAC/stream_encoder_framing.c
juce_audio_formats/codecs/flac/libFLAC/window_flac.c
juce_audio_formats/codecs/flac/metadata.h
juce_audio_formats/codecs/flac/ordinals.h
juce_audio_formats/codecs/flac/stream_decoder.h
juce_audio_formats/codecs/flac/stream_encoder.h
juce_audio_formats/codecs/juce_AiffAudioFormat.cpp
juce_audio_formats/codecs/juce_AiffAudioFormat.h
juce_audio_formats/codecs/juce_CoreAudioFormat.cpp
juce_audio_formats/codecs/juce_CoreAudioFormat.h
juce_audio_formats/codecs/juce_FlacAudioFormat.cpp
juce_audio_formats/codecs/juce_FlacAudioFormat.h
juce_audio_formats/codecs/juce_LAMEEncoderAudioFormat.cpp
juce_audio_formats/codecs/juce_LAMEEncoderAudioFormat.h
juce_audio_formats/codecs/juce_MP3AudioFormat.cpp
juce_audio_formats/codecs/juce_MP3AudioFormat.h
juce_audio_formats/codecs/juce_OggVorbisAudioFormat.cpp
juce_audio_formats/codecs/juce_OggVorbisAudioFormat.h
juce_audio_formats/codecs/juce_WavAudioFormat.cpp
juce_audio_formats/codecs/juce_WavAudioFormat.h
juce_audio_formats/codecs/juce_WindowsMediaAudioFormat.cpp
juce_audio_formats/codecs/juce_WindowsMediaAudioFormat.h
juce_audio_formats/codecs/oggvorbis/Ogg Vorbis Licence.txt
juce_audio_formats/codecs/oggvorbis/bitwise.c
juce_audio_formats/codecs/oggvorbis/codec.h
juce_audio_formats/codecs/oggvorbis/config_types.h
juce_audio_formats/codecs/oggvorbis/crctable.h
juce_audio_formats/codecs/oggvorbis/framing.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/AUTHORS
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/CHANGES
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/COPYING
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/README.md
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/analysis.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/backends.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/bitrate.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/bitrate.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/block.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/books/coupled/res_books_51.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/books/coupled/res_books_stereo.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/books/floor/floor_books.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/books/uncoupled/res_books_uncoupled.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/codebook.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/codebook.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/codec_internal.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/envelope.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/envelope.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/floor0.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/floor1.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/highlevel.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/info.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/lookup.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/lookup.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/lookup_data.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/lpc.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/lpc.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/lsp.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/lsp.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/mapping0.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/masking.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/mdct.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/mdct.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/misc.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/misc.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/floor_all.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/psych_11.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/psych_16.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/psych_44.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/psych_8.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/residue_16.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/residue_44.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/residue_44p51.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/residue_44u.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/residue_8.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/setup_11.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/setup_16.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/setup_22.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/setup_32.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/setup_44.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/setup_44p51.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/setup_44u.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/setup_8.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/modes/setup_X.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/os.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/psy.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/psy.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/registry.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/registry.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/res0.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/scales.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/sharedbook.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/smallft.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/smallft.h
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/synthesis.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/vorbisenc.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/vorbisfile.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/window.c
juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.7/lib/window.h
juce_audio_formats/codecs/oggvorbis/ogg.h
juce_audio_formats/codecs/oggvorbis/os_types.h
juce_audio_formats/codecs/oggvorbis/vorbisenc.h
juce_audio_formats/codecs/oggvorbis/vorbisfile.h
juce_audio_formats/format/juce_ARAAudioReaders.cpp
juce_audio_formats/format/juce_ARAAudioReaders.h
juce_audio_formats/format/juce_AudioFormat.cpp
juce_audio_formats/format/juce_AudioFormat.h
juce_audio_formats/format/juce_AudioFormatManager.cpp
juce_audio_formats/format/juce_AudioFormatManager.h
juce_audio_formats/format/juce_AudioFormatReader.cpp
juce_audio_formats/format/juce_AudioFormatReader.h
juce_audio_formats/format/juce_AudioFormatReaderSource.cpp
juce_audio_formats/format/juce_AudioFormatReaderSource.h
juce_audio_formats/format/juce_AudioFormatWriter.cpp
juce_audio_formats/format/juce_AudioFormatWriter.h
juce_audio_formats/format/juce_AudioSubsectionReader.cpp
juce_audio_formats/format/juce_AudioSubsectionReader.h
juce_audio_formats/format/juce_BufferingAudioFormatReader.cpp
juce_audio_formats/format/juce_BufferingAudioFormatReader.h
juce_audio_formats/format/juce_MemoryMappedAudioFormatReader.h
juce_audio_formats/juce_audio_formats.cpp
juce_audio_formats/juce_audio_formats.h
juce_audio_formats/juce_audio_formats.mm
juce_audio_formats/sampler/juce_Sampler.cpp
juce_audio_formats/sampler/juce_Sampler.h
)
set(files_juce_audio_plugin_client
juce_audio_plugin_client/AAX/juce_AAX_Modifier_Injector.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUBase.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/AUBase.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUBuffer.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/AUBuffer.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUBufferAllocator.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/AUEffectBase.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/AUEffectBase.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUInputElement.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/AUInputElement.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUMIDIBase.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/AUMIDIBase.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUMIDIEffectBase.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/AUMIDIEffectBase.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUMIDIUtility.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUOutputElement.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/AUOutputElement.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUPlugInDispatch.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/AUPlugInDispatch.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUScopeElement.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/AUScopeElement.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUSilentTimeout.h
juce_audio_plugin_client/AU/AudioUnitSDK/AUUtility.h
juce_audio_plugin_client/AU/AudioUnitSDK/AudioUnitSDK.h
juce_audio_plugin_client/AU/AudioUnitSDK/ComponentBase.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/ComponentBase.h
juce_audio_plugin_client/AU/AudioUnitSDK/JUCE CHANGES.txt
juce_audio_plugin_client/AU/AudioUnitSDK/LICENSE.txt
juce_audio_plugin_client/AU/AudioUnitSDK/MusicDeviceBase.cpp
juce_audio_plugin_client/AU/AudioUnitSDK/MusicDeviceBase.h
juce_audio_plugin_client/LV2/juce_LV2ManifestHelper.cpp
juce_audio_plugin_client/Standalone/juce_StandaloneFilterWindow.h
juce_audio_plugin_client/Unity/juce_UnityPluginInterface.h
juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.cpp
juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm
juce_audio_plugin_client/detail/juce_CheckSettingMacros.h
juce_audio_plugin_client/detail/juce_CreatePluginFilter.h
juce_audio_plugin_client/detail/juce_IncludeModuleHeaders.h
juce_audio_plugin_client/detail/juce_IncludeSystemHeaders.h
juce_audio_plugin_client/detail/juce_LinuxMessageThread.h
juce_audio_plugin_client/detail/juce_PluginUtilities.h
juce_audio_plugin_client/detail/juce_VSTWindowUtilities.h
juce_audio_plugin_client/juce_audio_plugin_client.h
juce_audio_plugin_client/juce_audio_plugin_client_AAX.cpp
juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm
juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp
juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp
juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm
juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm
juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm
juce_audio_plugin_client/juce_audio_plugin_client_LV2.cpp
juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm
juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp
juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp
juce_audio_plugin_client/juce_audio_plugin_client_VST2.cpp
juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm
juce_audio_plugin_client/juce_audio_plugin_client_VST3.cpp
juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm
)
set(files_juce_audio_processors
juce_audio_processors/format/juce_AudioPluginFormat.cpp
juce_audio_processors/format/juce_AudioPluginFormat.h
juce_audio_processors/format/juce_AudioPluginFormatManager.cpp
juce_audio_processors/format/juce_AudioPluginFormatManager.h
juce_audio_processors/format_types/LV2_SDK/README.md
juce_audio_processors/format_types/LV2_SDK/generate_lv2_bundle_sources.py
juce_audio_processors/format_types/LV2_SDK/juce_lv2_config.h
juce_audio_processors/format_types/LV2_SDK/lilv/COPYING
juce_audio_processors/format_types/LV2_SDK/lilv/lilv/lilv.h
juce_audio_processors/format_types/LV2_SDK/lilv/lilv/lilvmm.hpp
juce_audio_processors/format_types/LV2_SDK/lilv/src/collections.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/filesystem.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/filesystem.h
juce_audio_processors/format_types/LV2_SDK/lilv/src/instance.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/lib.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/lilv_internal.h
juce_audio_processors/format_types/LV2_SDK/lilv/src/node.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/plugin.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/pluginclass.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/port.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/query.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/scalepoint.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/state.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/ui.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/util.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/world.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/zix/common.h
juce_audio_processors/format_types/LV2_SDK/lilv/src/zix/tree.c
juce_audio_processors/format_types/LV2_SDK/lilv/src/zix/tree.h
juce_audio_processors/format_types/LV2_SDK/lilv_config.h
juce_audio_processors/format_types/LV2_SDK/lv2/COPYING
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/atom/atom-test-utils.c
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/atom/atom-test.c
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/atom/atom.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/atom/atom.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/atom/atom.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/atom/forge-overflow-test.c
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/atom/forge.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/atom/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/atom/util.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/buf-size/buf-size.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/buf-size/buf-size.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/buf-size/buf-size.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/buf-size/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/core/attributes.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/core/lv2.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/core/lv2_util.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/core/lv2core.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/core/lv2core.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/core/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/core/meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/core/people.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/data-access/data-access.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/data-access/data-access.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/data-access/data-access.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/data-access/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/dynmanifest/dynmanifest.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/dynmanifest/dynmanifest.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/dynmanifest/dynmanifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/dynmanifest/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/event/event-helpers.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/event/event.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/event/event.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/event/event.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/event/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/instance-access/instance-access.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/instance-access/instance-access.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/instance-access/instance-access.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/instance-access/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/log/log.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/log/log.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/log/log.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/log/logger.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/log/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/midi/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/midi/midi.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/midi/midi.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/midi/midi.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/morph/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/morph/morph.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/morph/morph.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/morph/morph.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/options/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/options/options.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/options/options.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/options/options.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/parameters/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/parameters/parameters.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/parameters/parameters.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/parameters/parameters.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/patch/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/patch/patch.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/patch/patch.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/patch/patch.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/port-groups/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/port-groups/port-groups.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/port-groups/port-groups.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/port-groups/port-groups.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/port-props/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/port-props/port-props.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/port-props/port-props.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/port-props/port-props.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/presets/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/presets/presets.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/presets/presets.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/presets/presets.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/resize-port/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/resize-port/resize-port.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/resize-port/resize-port.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/resize-port/resize-port.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/state/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/state/state.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/state/state.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/state/state.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/time/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/time/time.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/time/time.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/time/time.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/ui/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/ui/ui.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/ui/ui.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/ui/ui.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/units/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/units/units.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/units/units.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/units/units.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/uri-map/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/uri-map/uri-map.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/uri-map/uri-map.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/uri-map/uri-map.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/urid/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/urid/urid.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/urid/urid.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/urid/urid.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/worker/manifest.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/worker/worker.h
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/worker/worker.meta.ttl
juce_audio_processors/format_types/LV2_SDK/lv2/lv2/worker/worker.ttl
juce_audio_processors/format_types/LV2_SDK/serd/COPYING
juce_audio_processors/format_types/LV2_SDK/serd/serd/serd.h
juce_audio_processors/format_types/LV2_SDK/serd/src/.clang-tidy
juce_audio_processors/format_types/LV2_SDK/serd/src/attributes.h
juce_audio_processors/format_types/LV2_SDK/serd/src/base64.c
juce_audio_processors/format_types/LV2_SDK/serd/src/base64.h
juce_audio_processors/format_types/LV2_SDK/serd/src/byte_sink.h
juce_audio_processors/format_types/LV2_SDK/serd/src/byte_source.c
juce_audio_processors/format_types/LV2_SDK/serd/src/byte_source.h
juce_audio_processors/format_types/LV2_SDK/serd/src/env.c
juce_audio_processors/format_types/LV2_SDK/serd/src/n3.c
juce_audio_processors/format_types/LV2_SDK/serd/src/node.c
juce_audio_processors/format_types/LV2_SDK/serd/src/node.h
juce_audio_processors/format_types/LV2_SDK/serd/src/reader.c
juce_audio_processors/format_types/LV2_SDK/serd/src/reader.h
juce_audio_processors/format_types/LV2_SDK/serd/src/serd_config.h
juce_audio_processors/format_types/LV2_SDK/serd/src/serd_internal.h
juce_audio_processors/format_types/LV2_SDK/serd/src/serdi.c
juce_audio_processors/format_types/LV2_SDK/serd/src/stack.h
juce_audio_processors/format_types/LV2_SDK/serd/src/string.c
juce_audio_processors/format_types/LV2_SDK/serd/src/string_utils.h
juce_audio_processors/format_types/LV2_SDK/serd/src/system.c
juce_audio_processors/format_types/LV2_SDK/serd/src/system.h
juce_audio_processors/format_types/LV2_SDK/serd/src/uri.c
juce_audio_processors/format_types/LV2_SDK/serd/src/uri_utils.h
juce_audio_processors/format_types/LV2_SDK/serd/src/writer.c
juce_audio_processors/format_types/LV2_SDK/serd_config.h
juce_audio_processors/format_types/LV2_SDK/sord/COPYING
juce_audio_processors/format_types/LV2_SDK/sord/sord/sord.h
juce_audio_processors/format_types/LV2_SDK/sord/sord/sordmm.hpp
juce_audio_processors/format_types/LV2_SDK/sord/src/sord.c
juce_audio_processors/format_types/LV2_SDK/sord/src/sord_config.h
juce_audio_processors/format_types/LV2_SDK/sord/src/sord_internal.h
juce_audio_processors/format_types/LV2_SDK/sord/src/sord_test.c
juce_audio_processors/format_types/LV2_SDK/sord/src/sord_validate.c
juce_audio_processors/format_types/LV2_SDK/sord/src/sordi.c
juce_audio_processors/format_types/LV2_SDK/sord/src/sordmm_test.cpp
juce_audio_processors/format_types/LV2_SDK/sord/src/syntax.c
juce_audio_processors/format_types/LV2_SDK/sord/src/zix/btree.c
juce_audio_processors/format_types/LV2_SDK/sord/src/zix/btree.h
juce_audio_processors/format_types/LV2_SDK/sord/src/zix/common.h
juce_audio_processors/format_types/LV2_SDK/sord/src/zix/digest.c
juce_audio_processors/format_types/LV2_SDK/sord/src/zix/digest.h
juce_audio_processors/format_types/LV2_SDK/sord/src/zix/hash.c
juce_audio_processors/format_types/LV2_SDK/sord/src/zix/hash.h
juce_audio_processors/format_types/LV2_SDK/sord_config.h
juce_audio_processors/format_types/LV2_SDK/sratom/COPYING
juce_audio_processors/format_types/LV2_SDK/sratom/sratom/sratom.h
juce_audio_processors/format_types/LV2_SDK/sratom/src/sratom.c
juce_audio_processors/format_types/VST3_SDK/JUCE_README.md
juce_audio_processors/format_types/VST3_SDK/LICENSE.txt
juce_audio_processors/format_types/VST3_SDK/README.md
juce_audio_processors/format_types/VST3_SDK/VST3_License_Agreement.pdf
juce_audio_processors/format_types/VST3_SDK/VST3_Usage_Guidelines.pdf
juce_audio_processors/format_types/VST3_SDK/base/LICENSE.txt
juce_audio_processors/format_types/VST3_SDK/base/README.md
juce_audio_processors/format_types/VST3_SDK/base/source/baseiids.cpp
juce_audio_processors/format_types/VST3_SDK/base/source/classfactoryhelpers.h
juce_audio_processors/format_types/VST3_SDK/base/source/fbuffer.cpp
juce_audio_processors/format_types/VST3_SDK/base/source/fbuffer.h
juce_audio_processors/format_types/VST3_SDK/base/source/fcommandline.h
juce_audio_processors/format_types/VST3_SDK/base/source/fdebug.cpp
juce_audio_processors/format_types/VST3_SDK/base/source/fdebug.h
juce_audio_processors/format_types/VST3_SDK/base/source/fobject.cpp
juce_audio_processors/format_types/VST3_SDK/base/source/fobject.h
juce_audio_processors/format_types/VST3_SDK/base/source/fstreamer.cpp
juce_audio_processors/format_types/VST3_SDK/base/source/fstreamer.h
juce_audio_processors/format_types/VST3_SDK/base/source/fstring.cpp
juce_audio_processors/format_types/VST3_SDK/base/source/fstring.h
juce_audio_processors/format_types/VST3_SDK/base/source/updatehandler.cpp
juce_audio_processors/format_types/VST3_SDK/base/source/updatehandler.h
juce_audio_processors/format_types/VST3_SDK/base/thread/include/flock.h
juce_audio_processors/format_types/VST3_SDK/base/thread/source/flock.cpp
juce_audio_processors/format_types/VST3_SDK/helper.manifest
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/LICENSE.txt
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/README.md
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/conststringtable.cpp
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/conststringtable.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/coreiids.cpp
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/falignpop.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/falignpush.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/fplatform.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/fstrdefs.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ftypes.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/funknown.cpp
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/funknown.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/futils.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/fvariant.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ibstream.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/icloneable.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ipersistent.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ipluginbase.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/iplugincompatibility.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/istringresult.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/iupdatehandler.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/smartpointer.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/typesizecheck.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ustring.cpp
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ustring.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/gui/iplugview.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/gui/iplugviewcontentscalesupport.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstattributes.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstaudioprocessor.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstautomationstate.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstchannelcontextinfo.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstcomponent.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstcontextmenu.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivsteditcontroller.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstevents.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivsthostapplication.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstinterappaudio.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstmessage.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstmidicontrollers.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstmidilearn.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstnoteexpression.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstparameterchanges.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstparameterfunctionname.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstphysicalui.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstpluginterfacesupport.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstplugview.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstprefetchablesupport.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstprocesscontext.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstrepresentation.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivsttestplugprovider.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstunits.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/vstpshpack4.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/vstspeaker.h
juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/vsttypes.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/LICENSE.txt
juce_audio_processors/format_types/VST3_SDK/public.sdk/README.md
juce_audio_processors/format_types/VST3_SDK/public.sdk/samples/vst-utilities/moduleinfotool/source/main.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/memorystream.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/memorystream.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/pluginview.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/pluginview.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/readfile.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/readfile.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/hostclasses.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/hostclasses.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/module.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/module.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/module_linux.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/module_mac.mm
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/module_win32.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/pluginterfacesupport.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/pluginterfacesupport.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/moduleinfo/ReadMe.md
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/moduleinfo/json.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/moduleinfo/jsoncxx.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/moduleinfo/moduleinfo.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/moduleinfo/moduleinfocreator.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/moduleinfo/moduleinfocreator.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/moduleinfo/moduleinfoparser.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/moduleinfo/moduleinfoparser.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/utility/optional.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/utility/stringconvert.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/utility/stringconvert.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/utility/uid.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstbus.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstbus.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponent.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponent.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponentbase.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponentbase.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vsteditcontroller.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vsteditcontroller.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstinitiids.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstparameters.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstparameters.h
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstpresetfile.cpp
juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstpresetfile.h
juce_audio_processors/format_types/juce_ARACommon.cpp
juce_audio_processors/format_types/juce_ARACommon.h
juce_audio_processors/format_types/juce_ARAHosting.cpp
juce_audio_processors/format_types/juce_ARAHosting.h
juce_audio_processors/format_types/juce_AU_Shared.h
juce_audio_processors/format_types/juce_AudioUnitPluginFormat.h
juce_audio_processors/format_types/juce_AudioUnitPluginFormat.mm
juce_audio_processors/format_types/juce_LADSPAPluginFormat.cpp
juce_audio_processors/format_types/juce_LADSPAPluginFormat.h
juce_audio_processors/format_types/juce_LV2Common.h
juce_audio_processors/format_types/juce_LV2PluginFormat.cpp
juce_audio_processors/format_types/juce_LV2PluginFormat.h
juce_audio_processors/format_types/juce_LV2PluginFormat_test.cpp
juce_audio_processors/format_types/juce_LV2Resources.h
juce_audio_processors/format_types/juce_LV2SupportLibs.cpp
juce_audio_processors/format_types/juce_LegacyAudioParameter.cpp
juce_audio_processors/format_types/juce_VST3Common.h
juce_audio_processors/format_types/juce_VST3Headers.h
juce_audio_processors/format_types/juce_VST3PluginFormat.cpp
juce_audio_processors/format_types/juce_VST3PluginFormat.h
juce_audio_processors/format_types/juce_VST3PluginFormat_test.cpp
juce_audio_processors/format_types/juce_VSTCommon.h
juce_audio_processors/format_types/juce_VSTMidiEventList.h
juce_audio_processors/format_types/juce_VSTPluginFormat.cpp
juce_audio_processors/format_types/juce_VSTPluginFormat.h
juce_audio_processors/format_types/pslextensions/ipslcontextinfo.h
juce_audio_processors/format_types/pslextensions/ipsleditcontroller.h
juce_audio_processors/format_types/pslextensions/ipslgainreduction.h
juce_audio_processors/format_types/pslextensions/ipslhostcommands.h
juce_audio_processors/format_types/pslextensions/ipslviewembedding.h
juce_audio_processors/format_types/pslextensions/ipslviewscaling.h
juce_audio_processors/format_types/pslextensions/pslauextensions.h
juce_audio_processors/format_types/pslextensions/pslvst2extensions.h
juce_audio_processors/juce_audio_processors.cpp
juce_audio_processors/juce_audio_processors.h
juce_audio_processors/juce_audio_processors.mm
juce_audio_processors/juce_audio_processors_ara.cpp
juce_audio_processors/juce_audio_processors_lv2_libs.cpp
juce_audio_processors/processors/juce_AudioPluginInstance.cpp
juce_audio_processors/processors/juce_AudioPluginInstance.h
juce_audio_processors/processors/juce_AudioProcessor.cpp
juce_audio_processors/processors/juce_AudioProcessor.h
juce_audio_processors/processors/juce_AudioProcessorEditor.cpp
juce_audio_processors/processors/juce_AudioProcessorEditor.h
juce_audio_processors/processors/juce_AudioProcessorEditorHostContext.h
juce_audio_processors/processors/juce_AudioProcessorGraph.cpp
juce_audio_processors/processors/juce_AudioProcessorGraph.h
juce_audio_processors/processors/juce_AudioProcessorListener.h
juce_audio_processors/processors/juce_AudioProcessorParameter.h
juce_audio_processors/processors/juce_AudioProcessorParameterGroup.cpp
juce_audio_processors/processors/juce_AudioProcessorParameterGroup.h
juce_audio_processors/processors/juce_GenericAudioProcessorEditor.cpp
juce_audio_processors/processors/juce_GenericAudioProcessorEditor.h
juce_audio_processors/processors/juce_HostedAudioProcessorParameter.h
juce_audio_processors/processors/juce_PluginDescription.cpp
juce_audio_processors/processors/juce_PluginDescription.h
juce_audio_processors/scanning/juce_KnownPluginList.cpp
juce_audio_processors/scanning/juce_KnownPluginList.h
juce_audio_processors/scanning/juce_PluginDirectoryScanner.cpp
juce_audio_processors/scanning/juce_PluginDirectoryScanner.h
juce_audio_processors/scanning/juce_PluginListComponent.cpp
juce_audio_processors/scanning/juce_PluginListComponent.h
juce_audio_processors/utilities/ARA/juce_ARADebug.h
juce_audio_processors/utilities/ARA/juce_ARADocumentController.cpp
juce_audio_processors/utilities/ARA/juce_ARADocumentController.h
juce_audio_processors/utilities/ARA/juce_ARADocumentControllerCommon.cpp
juce_audio_processors/utilities/ARA/juce_ARAModelObjects.cpp
juce_audio_processors/utilities/ARA/juce_ARAModelObjects.h
juce_audio_processors/utilities/ARA/juce_ARAPlugInInstanceRoles.cpp
juce_audio_processors/utilities/ARA/juce_ARAPlugInInstanceRoles.h
juce_audio_processors/utilities/ARA/juce_ARA_utils.cpp
juce_audio_processors/utilities/ARA/juce_ARA_utils.h
juce_audio_processors/utilities/ARA/juce_AudioProcessor_ARAExtensions.cpp
juce_audio_processors/utilities/ARA/juce_AudioProcessor_ARAExtensions.h
juce_audio_processors/utilities/juce_AAXClientExtensions.cpp
juce_audio_processors/utilities/juce_AAXClientExtensions.h
juce_audio_processors/utilities/juce_AudioParameterBool.cpp
juce_audio_processors/utilities/juce_AudioParameterBool.h
juce_audio_processors/utilities/juce_AudioParameterChoice.cpp
juce_audio_processors/utilities/juce_AudioParameterChoice.h
juce_audio_processors/utilities/juce_AudioParameterFloat.cpp
juce_audio_processors/utilities/juce_AudioParameterFloat.h
juce_audio_processors/utilities/juce_AudioParameterInt.cpp
juce_audio_processors/utilities/juce_AudioParameterInt.h
juce_audio_processors/utilities/juce_AudioProcessorParameterWithID.cpp
juce_audio_processors/utilities/juce_AudioProcessorParameterWithID.h
juce_audio_processors/utilities/juce_AudioProcessorValueTreeState.cpp
juce_audio_processors/utilities/juce_AudioProcessorValueTreeState.h
juce_audio_processors/utilities/juce_ExtensionsVisitor.h
juce_audio_processors/utilities/juce_FlagCache.h
juce_audio_processors/utilities/juce_NativeScaleFactorNotifier.cpp
juce_audio_processors/utilities/juce_NativeScaleFactorNotifier.h
juce_audio_processors/utilities/juce_ParameterAttachments.cpp
juce_audio_processors/utilities/juce_ParameterAttachments.h
juce_audio_processors/utilities/juce_PluginHostType.cpp
juce_audio_processors/utilities/juce_PluginHostType.h
juce_audio_processors/utilities/juce_RangedAudioParameter.cpp
juce_audio_processors/utilities/juce_RangedAudioParameter.h
juce_audio_processors/utilities/juce_VST2ClientExtensions.cpp
juce_audio_processors/utilities/juce_VST2ClientExtensions.h
juce_audio_processors/utilities/juce_VST3ClientExtensions.h
)
set(files_juce_audio_utils
juce_audio_utils/audio_cd/juce_AudioCDBurner.h
juce_audio_utils/audio_cd/juce_AudioCDReader.cpp
juce_audio_utils/audio_cd/juce_AudioCDReader.h
juce_audio_utils/gui/juce_AudioAppComponent.cpp
juce_audio_utils/gui/juce_AudioAppComponent.h
juce_audio_utils/gui/juce_AudioDeviceSelectorComponent.cpp
juce_audio_utils/gui/juce_AudioDeviceSelectorComponent.h
juce_audio_utils/gui/juce_AudioThumbnail.cpp
juce_audio_utils/gui/juce_AudioThumbnail.h
juce_audio_utils/gui/juce_AudioThumbnailBase.h
juce_audio_utils/gui/juce_AudioThumbnailCache.cpp
juce_audio_utils/gui/juce_AudioThumbnailCache.h
juce_audio_utils/gui/juce_AudioVisualiserComponent.cpp
juce_audio_utils/gui/juce_AudioVisualiserComponent.h
juce_audio_utils/gui/juce_BluetoothMidiDevicePairingDialogue.h
juce_audio_utils/gui/juce_KeyboardComponentBase.cpp
juce_audio_utils/gui/juce_KeyboardComponentBase.h
juce_audio_utils/gui/juce_MPEKeyboardComponent.cpp
juce_audio_utils/gui/juce_MPEKeyboardComponent.h
juce_audio_utils/gui/juce_MidiKeyboardComponent.cpp
juce_audio_utils/gui/juce_MidiKeyboardComponent.h
juce_audio_utils/juce_audio_utils.cpp
juce_audio_utils/juce_audio_utils.h
juce_audio_utils/juce_audio_utils.mm
juce_audio_utils/native/juce_AudioCDBurner_mac.mm
juce_audio_utils/native/juce_AudioCDBurner_windows.cpp
juce_audio_utils/native/juce_AudioCDReader_linux.cpp
juce_audio_utils/native/juce_AudioCDReader_mac.mm
juce_audio_utils/native/juce_AudioCDReader_windows.cpp
juce_audio_utils/native/juce_BluetoothMidiDevicePairingDialogue_android.cpp
juce_audio_utils/native/juce_BluetoothMidiDevicePairingDialogue_ios.mm
juce_audio_utils/native/juce_BluetoothMidiDevicePairingDialogue_linux.cpp
juce_audio_utils/native/juce_BluetoothMidiDevicePairingDialogue_mac.mm
juce_audio_utils/native/juce_BluetoothMidiDevicePairingDialogue_windows.cpp
juce_audio_utils/players/juce_AudioProcessorPlayer.cpp
juce_audio_utils/players/juce_AudioProcessorPlayer.h
juce_audio_utils/players/juce_SoundPlayer.cpp
juce_audio_utils/players/juce_SoundPlayer.h
)
set(files_juce_box2d
juce_box2d/box2d/Box2D.h
juce_box2d/box2d/Collision/Shapes/b2ChainShape.cpp
juce_box2d/box2d/Collision/Shapes/b2ChainShape.h
juce_box2d/box2d/Collision/Shapes/b2CircleShape.cpp
juce_box2d/box2d/Collision/Shapes/b2CircleShape.h
juce_box2d/box2d/Collision/Shapes/b2EdgeShape.cpp
juce_box2d/box2d/Collision/Shapes/b2EdgeShape.h
juce_box2d/box2d/Collision/Shapes/b2PolygonShape.cpp
juce_box2d/box2d/Collision/Shapes/b2PolygonShape.h
juce_box2d/box2d/Collision/Shapes/b2Shape.h
juce_box2d/box2d/Collision/b2BroadPhase.cpp
juce_box2d/box2d/Collision/b2BroadPhase.h
juce_box2d/box2d/Collision/b2CollideCircle.cpp
juce_box2d/box2d/Collision/b2CollideEdge.cpp
juce_box2d/box2d/Collision/b2CollidePolygon.cpp
juce_box2d/box2d/Collision/b2Collision.cpp
juce_box2d/box2d/Collision/b2Collision.h
juce_box2d/box2d/Collision/b2Distance.cpp
juce_box2d/box2d/Collision/b2Distance.h
juce_box2d/box2d/Collision/b2DynamicTree.cpp
juce_box2d/box2d/Collision/b2DynamicTree.h
juce_box2d/box2d/Collision/b2TimeOfImpact.cpp
juce_box2d/box2d/Collision/b2TimeOfImpact.h
juce_box2d/box2d/Common/b2BlockAllocator.cpp
juce_box2d/box2d/Common/b2BlockAllocator.h
juce_box2d/box2d/Common/b2Draw.cpp
juce_box2d/box2d/Common/b2Draw.h
juce_box2d/box2d/Common/b2GrowableStack.h
juce_box2d/box2d/Common/b2Math.cpp
juce_box2d/box2d/Common/b2Math.h
juce_box2d/box2d/Common/b2Settings.cpp
juce_box2d/box2d/Common/b2Settings.h
juce_box2d/box2d/Common/b2StackAllocator.cpp
juce_box2d/box2d/Common/b2StackAllocator.h
juce_box2d/box2d/Common/b2Timer.cpp
juce_box2d/box2d/Common/b2Timer.h
juce_box2d/box2d/Dynamics/Contacts/b2ChainAndCircleContact.cpp
juce_box2d/box2d/Dynamics/Contacts/b2ChainAndCircleContact.h
juce_box2d/box2d/Dynamics/Contacts/b2ChainAndPolygonContact.cpp
juce_box2d/box2d/Dynamics/Contacts/b2ChainAndPolygonContact.h
juce_box2d/box2d/Dynamics/Contacts/b2CircleContact.cpp
juce_box2d/box2d/Dynamics/Contacts/b2CircleContact.h
juce_box2d/box2d/Dynamics/Contacts/b2Contact.cpp
juce_box2d/box2d/Dynamics/Contacts/b2Contact.h
juce_box2d/box2d/Dynamics/Contacts/b2ContactSolver.cpp
juce_box2d/box2d/Dynamics/Contacts/b2ContactSolver.h
juce_box2d/box2d/Dynamics/Contacts/b2EdgeAndCircleContact.cpp
juce_box2d/box2d/Dynamics/Contacts/b2EdgeAndCircleContact.h
juce_box2d/box2d/Dynamics/Contacts/b2EdgeAndPolygonContact.cpp
juce_box2d/box2d/Dynamics/Contacts/b2EdgeAndPolygonContact.h
juce_box2d/box2d/Dynamics/Contacts/b2PolygonAndCircleContact.cpp
juce_box2d/box2d/Dynamics/Contacts/b2PolygonAndCircleContact.h
juce_box2d/box2d/Dynamics/Contacts/b2PolygonContact.cpp
juce_box2d/box2d/Dynamics/Contacts/b2PolygonContact.h
juce_box2d/box2d/Dynamics/Joints/b2DistanceJoint.cpp
juce_box2d/box2d/Dynamics/Joints/b2DistanceJoint.h
juce_box2d/box2d/Dynamics/Joints/b2FrictionJoint.cpp
juce_box2d/box2d/Dynamics/Joints/b2FrictionJoint.h
juce_box2d/box2d/Dynamics/Joints/b2GearJoint.cpp
juce_box2d/box2d/Dynamics/Joints/b2GearJoint.h
juce_box2d/box2d/Dynamics/Joints/b2Joint.cpp
juce_box2d/box2d/Dynamics/Joints/b2Joint.h
juce_box2d/box2d/Dynamics/Joints/b2MouseJoint.cpp
juce_box2d/box2d/Dynamics/Joints/b2MouseJoint.h
juce_box2d/box2d/Dynamics/Joints/b2PrismaticJoint.cpp
juce_box2d/box2d/Dynamics/Joints/b2PrismaticJoint.h
juce_box2d/box2d/Dynamics/Joints/b2PulleyJoint.cpp
juce_box2d/box2d/Dynamics/Joints/b2PulleyJoint.h
juce_box2d/box2d/Dynamics/Joints/b2RevoluteJoint.cpp
juce_box2d/box2d/Dynamics/Joints/b2RevoluteJoint.h
juce_box2d/box2d/Dynamics/Joints/b2RopeJoint.cpp
juce_box2d/box2d/Dynamics/Joints/b2RopeJoint.h
juce_box2d/box2d/Dynamics/Joints/b2WeldJoint.cpp
juce_box2d/box2d/Dynamics/Joints/b2WeldJoint.h
juce_box2d/box2d/Dynamics/Joints/b2WheelJoint.cpp
juce_box2d/box2d/Dynamics/Joints/b2WheelJoint.h
juce_box2d/box2d/Dynamics/b2Body.cpp
juce_box2d/box2d/Dynamics/b2Body.h
juce_box2d/box2d/Dynamics/b2ContactManager.cpp
juce_box2d/box2d/Dynamics/b2ContactManager.h
juce_box2d/box2d/Dynamics/b2Fixture.cpp
juce_box2d/box2d/Dynamics/b2Fixture.h
juce_box2d/box2d/Dynamics/b2Island.cpp
juce_box2d/box2d/Dynamics/b2Island.h
juce_box2d/box2d/Dynamics/b2TimeStep.h
juce_box2d/box2d/Dynamics/b2World.cpp
juce_box2d/box2d/Dynamics/b2World.h
juce_box2d/box2d/Dynamics/b2WorldCallbacks.cpp
juce_box2d/box2d/Dynamics/b2WorldCallbacks.h
juce_box2d/box2d/README.txt
juce_box2d/box2d/Rope/b2Rope.cpp
juce_box2d/box2d/Rope/b2Rope.h
juce_box2d/juce_box2d.cpp
juce_box2d/juce_box2d.h
juce_box2d/utils/juce_Box2DRenderer.cpp
juce_box2d/utils/juce_Box2DRenderer.h
)
set(files_juce_core
juce_core/containers/juce_AbstractFifo.cpp
juce_core/containers/juce_AbstractFifo.h
juce_core/containers/juce_Array.h
juce_core/containers/juce_ArrayAllocationBase.h
juce_core/containers/juce_ArrayBase.cpp
juce_core/containers/juce_ArrayBase.h
juce_core/containers/juce_DynamicObject.cpp
juce_core/containers/juce_DynamicObject.h
juce_core/containers/juce_ElementComparator.h
juce_core/containers/juce_Enumerate.h
juce_core/containers/juce_Enumerate_test.cpp
juce_core/containers/juce_HashMap.h
juce_core/containers/juce_HashMap_test.cpp
juce_core/containers/juce_LinkedListPointer.h
juce_core/containers/juce_ListenerList.cpp
juce_core/containers/juce_ListenerList.h
juce_core/containers/juce_NamedValueSet.cpp
juce_core/containers/juce_NamedValueSet.h
juce_core/containers/juce_Optional.h
juce_core/containers/juce_Optional_test.cpp
juce_core/containers/juce_OwnedArray.cpp
juce_core/containers/juce_OwnedArray.h
juce_core/containers/juce_PropertySet.cpp
juce_core/containers/juce_PropertySet.h
juce_core/containers/juce_ReferenceCountedArray.cpp
juce_core/containers/juce_ReferenceCountedArray.h
juce_core/containers/juce_ScopedValueSetter.h
juce_core/containers/juce_SingleThreadedAbstractFifo.h
juce_core/containers/juce_SortedSet.h
juce_core/containers/juce_Span.h
juce_core/containers/juce_SparseSet.cpp
juce_core/containers/juce_SparseSet.h
juce_core/containers/juce_Variant.cpp
juce_core/containers/juce_Variant.h
juce_core/files/juce_AndroidDocument.h
juce_core/files/juce_DirectoryIterator.cpp
juce_core/files/juce_DirectoryIterator.h
juce_core/files/juce_File.cpp
juce_core/files/juce_File.h
juce_core/files/juce_FileFilter.cpp
juce_core/files/juce_FileFilter.h
juce_core/files/juce_FileInputStream.cpp
juce_core/files/juce_FileInputStream.h
juce_core/files/juce_FileOutputStream.cpp
juce_core/files/juce_FileOutputStream.h
juce_core/files/juce_FileSearchPath.cpp
juce_core/files/juce_FileSearchPath.h
juce_core/files/juce_MemoryMappedFile.h
juce_core/files/juce_RangedDirectoryIterator.cpp
juce_core/files/juce_RangedDirectoryIterator.h
juce_core/files/juce_TemporaryFile.cpp
juce_core/files/juce_TemporaryFile.h
juce_core/files/juce_WildcardFileFilter.cpp
juce_core/files/juce_WildcardFileFilter.h
juce_core/files/juce_common_MimeTypes.cpp
juce_core/files/juce_common_MimeTypes.h
juce_core/javascript/juce_JSON.cpp
juce_core/javascript/juce_JSON.h
juce_core/javascript/juce_Javascript.cpp
juce_core/javascript/juce_Javascript.h
juce_core/javascript/juce_JSONSerialisation.h
juce_core/javascript/juce_JSONSerialisation_test.cpp
juce_core/javascript/juce_JSONUtils.cpp
juce_core/javascript/juce_JSONUtils.h
juce_core/juce_core.cpp
juce_core/juce_core.h
juce_core/juce_core.mm
juce_core/logging/juce_FileLogger.cpp
juce_core/logging/juce_FileLogger.h
juce_core/logging/juce_Logger.cpp
juce_core/logging/juce_Logger.h
juce_core/maths/juce_BigInteger.cpp
juce_core/maths/juce_BigInteger.h
juce_core/maths/juce_Expression.cpp
juce_core/maths/juce_Expression.h
juce_core/maths/juce_MathsFunctions.h
juce_core/maths/juce_MathsFunctions_test.cpp
juce_core/maths/juce_NormalisableRange.h
juce_core/maths/juce_Random.cpp
juce_core/maths/juce_Random.h
juce_core/maths/juce_Range.h
juce_core/maths/juce_StatisticsAccumulator.h
juce_core/memory/juce_AllocationHooks.cpp
juce_core/memory/juce_AllocationHooks.h
juce_core/memory/juce_Atomic.h
juce_core/memory/juce_ByteOrder.h
juce_core/memory/juce_ContainerDeletePolicy.h
juce_core/memory/juce_HeapBlock.h
juce_core/memory/juce_HeavyweightLeakedObjectDetector.h
juce_core/memory/juce_LeakedObjectDetector.h
juce_core/memory/juce_Memory.h
juce_core/memory/juce_MemoryBlock.cpp
juce_core/memory/juce_MemoryBlock.h
juce_core/memory/juce_OptionalScopedPointer.h
juce_core/memory/juce_ReferenceCountedObject.h
juce_core/memory/juce_Reservoir.h
juce_core/memory/juce_ScopedPointer.h
juce_core/memory/juce_SharedResourcePointer.h
juce_core/memory/juce_Singleton.h
juce_core/memory/juce_WeakReference.h
juce_core/misc/juce_ConsoleApplication.cpp
juce_core/misc/juce_ConsoleApplication.h
juce_core/misc/juce_EnumHelpers.h
juce_core/misc/juce_EnumHelpers_test.cpp
juce_core/misc/juce_Functional.h
juce_core/misc/juce_ScopeGuard.cpp
juce_core/misc/juce_ScopeGuard.h
juce_core/misc/juce_Result.cpp
juce_core/misc/juce_Result.h
juce_core/misc/juce_RuntimePermissions.cpp
juce_core/misc/juce_RuntimePermissions.h
juce_core/misc/juce_Uuid.cpp
juce_core/misc/juce_Uuid.h
juce_core/misc/juce_WindowsRegistry.h
juce_core/native/java/README.txt
juce_core/native/java/app/com/rmsl/juce/FragmentOverlay.java
juce_core/native/java/app/com/rmsl/juce/JuceHTTPStream.java
juce_core/native/java/app/com/rmsl/juce/JuceInvocationHandler.java
juce_core/native/javacore/app/com/rmsl/juce/JuceApp.java
juce_core/native/javacore/init/com/rmsl/juce/Java.java
juce_core/native/juce_AndroidDocument_android.cpp
juce_core/native/juce_BasicNativeHeaders.h
juce_core/native/juce_CFHelpers_mac.h
juce_core/native/juce_ComSmartPtr_windows.h
juce_core/native/juce_CommonFile_linux.cpp
juce_core/native/juce_Files_android.cpp
juce_core/native/juce_Files_linux.cpp
juce_core/native/juce_Files_mac.mm
juce_core/native/juce_Files_windows.cpp
juce_core/native/juce_IPAddress_posix.h
juce_core/native/juce_JNIHelpers_android.cpp
juce_core/native/juce_JNIHelpers_android.h
juce_core/native/juce_Misc_android.cpp
juce_core/native/juce_NamedPipe_posix.cpp
juce_core/native/juce_Network_android.cpp
juce_core/native/juce_Network_curl.cpp
juce_core/native/juce_Network_linux.cpp
juce_core/native/juce_Network_mac.mm
juce_core/native/juce_Network_windows.cpp
juce_core/native/juce_ObjCHelpers_mac.h
juce_core/native/juce_ObjCHelpers_mac_test.mm
juce_core/native/juce_PlatformTimerListener.h
juce_core/native/juce_PlatformTimer_generic.cpp
juce_core/native/juce_PlatformTimer_windows.cpp
juce_core/native/juce_Process_mac.mm
juce_core/native/juce_Registry_windows.cpp
juce_core/native/juce_RuntimePermissions_android.cpp
juce_core/native/juce_SharedCode_intel.h
juce_core/native/juce_SharedCode_posix.h
juce_core/native/juce_Strings_mac.mm
juce_core/native/juce_SystemStats_android.cpp
juce_core/native/juce_SystemStats_linux.cpp
juce_core/native/juce_SystemStats_mac.mm
juce_core/native/juce_SystemStats_wasm.cpp
juce_core/native/juce_SystemStats_windows.cpp
juce_core/native/juce_ThreadPriorities_native.h
juce_core/native/juce_Threads_android.cpp
juce_core/native/juce_Threads_linux.cpp
juce_core/native/juce_Threads_mac.mm
juce_core/native/juce_Threads_windows.cpp
juce_core/network/juce_IPAddress.cpp
juce_core/network/juce_IPAddress.h
juce_core/network/juce_MACAddress.cpp
juce_core/network/juce_MACAddress.h
juce_core/network/juce_NamedPipe.cpp
juce_core/network/juce_NamedPipe.h
juce_core/network/juce_Socket.cpp
juce_core/network/juce_Socket.h
juce_core/network/juce_URL.cpp
juce_core/network/juce_URL.h
juce_core/network/juce_WebInputStream.cpp
juce_core/network/juce_WebInputStream.h
juce_core/serialisation/juce_Serialisation.h
juce_core/streams/juce_AndroidDocumentInputSource.h
juce_core/streams/juce_BufferedInputStream.cpp
juce_core/streams/juce_BufferedInputStream.h
juce_core/streams/juce_FileInputSource.cpp
juce_core/streams/juce_FileInputSource.h
juce_core/streams/juce_InputSource.h
juce_core/streams/juce_InputStream.cpp
juce_core/streams/juce_InputStream.h
juce_core/streams/juce_MemoryInputStream.cpp
juce_core/streams/juce_MemoryInputStream.h
juce_core/streams/juce_MemoryOutputStream.cpp
juce_core/streams/juce_MemoryOutputStream.h
juce_core/streams/juce_OutputStream.cpp
juce_core/streams/juce_OutputStream.h
juce_core/streams/juce_SubregionStream.cpp
juce_core/streams/juce_SubregionStream.h
juce_core/streams/juce_URLInputSource.cpp
juce_core/streams/juce_URLInputSource.h
juce_core/system/juce_CompilerSupport.h
juce_core/system/juce_CompilerWarnings.h
juce_core/system/juce_PlatformDefs.h
juce_core/system/juce_StandardHeader.h
juce_core/system/juce_SystemStats.cpp
juce_core/system/juce_SystemStats.h
juce_core/system/juce_TargetPlatform.h
juce_core/text/juce_Base64.cpp
juce_core/text/juce_Base64.h
juce_core/text/juce_CharPointer_ASCII.h
juce_core/text/juce_CharPointer_UTF16.h
juce_core/text/juce_CharPointer_UTF32.h
juce_core/text/juce_CharPointer_UTF8.h
juce_core/text/juce_CharacterFunctions.cpp
juce_core/text/juce_CharacterFunctions.h
juce_core/text/juce_Identifier.cpp
juce_core/text/juce_Identifier.h
juce_core/text/juce_LocalisedStrings.cpp
juce_core/text/juce_LocalisedStrings.h
juce_core/text/juce_NewLine.h
juce_core/text/juce_String.cpp
juce_core/text/juce_String.h
juce_core/text/juce_StringArray.cpp
juce_core/text/juce_StringArray.h
juce_core/text/juce_StringPairArray.cpp
juce_core/text/juce_StringPairArray.h
juce_core/text/juce_StringPool.cpp
juce_core/text/juce_StringPool.h
juce_core/text/juce_StringRef.h
juce_core/text/juce_TextDiff.cpp
juce_core/text/juce_TextDiff.h
juce_core/threads/juce_ChildProcess.cpp
juce_core/threads/juce_ChildProcess.h
juce_core/threads/juce_CriticalSection.h
juce_core/threads/juce_DynamicLibrary.h
juce_core/threads/juce_HighResolutionTimer.cpp
juce_core/threads/juce_HighResolutionTimer.h
juce_core/threads/juce_InterProcessLock.h
juce_core/threads/juce_Process.h
juce_core/threads/juce_ReadWriteLock.cpp
juce_core/threads/juce_ReadWriteLock.h
juce_core/threads/juce_ScopedLock.h
juce_core/threads/juce_ScopedReadLock.h
juce_core/threads/juce_ScopedWriteLock.h
juce_core/threads/juce_SpinLock.h
juce_core/threads/juce_Thread.cpp
juce_core/threads/juce_Thread.h
juce_core/threads/juce_ThreadLocalValue.h
juce_core/threads/juce_ThreadPool.cpp
juce_core/threads/juce_ThreadPool.h
juce_core/threads/juce_TimeSliceThread.cpp
juce_core/threads/juce_TimeSliceThread.h
juce_core/threads/juce_WaitableEvent.cpp
juce_core/threads/juce_WaitableEvent.h
juce_core/time/juce_PerformanceCounter.cpp
juce_core/time/juce_PerformanceCounter.h
juce_core/time/juce_RelativeTime.cpp
juce_core/time/juce_RelativeTime.h
juce_core/time/juce_Time.cpp
juce_core/time/juce_Time.h
juce_core/unit_tests/juce_UnitTest.cpp
juce_core/unit_tests/juce_UnitTest.h
juce_core/unit_tests/juce_UnitTestCategories.h
juce_core/xml/juce_XmlDocument.cpp
juce_core/xml/juce_XmlDocument.h
juce_core/xml/juce_XmlElement.cpp
juce_core/xml/juce_XmlElement.h
juce_core/zip/juce_GZIPCompressorOutputStream.cpp
juce_core/zip/juce_GZIPCompressorOutputStream.h
juce_core/zip/juce_GZIPDecompressorInputStream.cpp
juce_core/zip/juce_GZIPDecompressorInputStream.h
juce_core/zip/juce_ZipFile.cpp
juce_core/zip/juce_ZipFile.h
juce_core/zip/zlib/README
juce_core/zip/zlib/adler32.c
juce_core/zip/zlib/compress.c
juce_core/zip/zlib/crc32.c
juce_core/zip/zlib/crc32.h
juce_core/zip/zlib/deflate.c
juce_core/zip/zlib/deflate.h
juce_core/zip/zlib/infback.c
juce_core/zip/zlib/inffast.c
juce_core/zip/zlib/inffast.h
juce_core/zip/zlib/inffixed.h
juce_core/zip/zlib/inflate.c
juce_core/zip/zlib/inflate.h
juce_core/zip/zlib/inftrees.c
juce_core/zip/zlib/inftrees.h
juce_core/zip/zlib/trees.c
juce_core/zip/zlib/trees.h
juce_core/zip/zlib/uncompr.c
juce_core/zip/zlib/zconf.h
juce_core/zip/zlib/zconf.in.h
juce_core/zip/zlib/zlib.h
juce_core/zip/zlib/zutil.c
juce_core/zip/zlib/zutil.h
)
set(files_juce_cryptography
juce_cryptography/encryption/juce_BlowFish.cpp
juce_cryptography/encryption/juce_BlowFish.h
juce_cryptography/encryption/juce_Primes.cpp
juce_cryptography/encryption/juce_Primes.h
juce_cryptography/encryption/juce_RSAKey.cpp
juce_cryptography/encryption/juce_RSAKey.h
juce_cryptography/hashing/juce_MD5.cpp
juce_cryptography/hashing/juce_MD5.h
juce_cryptography/hashing/juce_SHA256.cpp
juce_cryptography/hashing/juce_SHA256.h
juce_cryptography/hashing/juce_Whirlpool.cpp
juce_cryptography/hashing/juce_Whirlpool.h
juce_cryptography/juce_cryptography.cpp
juce_cryptography/juce_cryptography.h
juce_cryptography/juce_cryptography.mm
)
set(files_juce_data_structures
juce_data_structures/app_properties/juce_ApplicationProperties.cpp
juce_data_structures/app_properties/juce_ApplicationProperties.h
juce_data_structures/app_properties/juce_PropertiesFile.cpp
juce_data_structures/app_properties/juce_PropertiesFile.h
juce_data_structures/juce_data_structures.cpp
juce_data_structures/juce_data_structures.h
juce_data_structures/juce_data_structures.mm
juce_data_structures/undomanager/juce_UndoManager.cpp
juce_data_structures/undomanager/juce_UndoManager.h
juce_data_structures/undomanager/juce_UndoableAction.cpp
juce_data_structures/undomanager/juce_UndoableAction.h
juce_data_structures/values/juce_CachedValue.cpp
juce_data_structures/values/juce_CachedValue.h
juce_data_structures/values/juce_Value.cpp
juce_data_structures/values/juce_Value.h
juce_data_structures/values/juce_ValueTree.cpp
juce_data_structures/values/juce_ValueTree.h
juce_data_structures/values/juce_ValueTreePropertyWithDefault.h
juce_data_structures/values/juce_ValueTreePropertyWithDefault_test.cpp
juce_data_structures/values/juce_ValueTreeSynchroniser.cpp
juce_data_structures/values/juce_ValueTreeSynchroniser.h
)
set(files_juce_dsp
juce_dsp/containers/juce_AudioBlock.h
juce_dsp/containers/juce_AudioBlock_test.cpp
juce_dsp/containers/juce_FixedSizeFunction.h
juce_dsp/containers/juce_FixedSizeFunction_test.cpp
juce_dsp/containers/juce_SIMDRegister.h
juce_dsp/containers/juce_SIMDRegister_Impl.h
juce_dsp/containers/juce_SIMDRegister_test.cpp
juce_dsp/filter_design/juce_FilterDesign.cpp
juce_dsp/filter_design/juce_FilterDesign.h
juce_dsp/frequency/juce_Convolution.cpp
juce_dsp/frequency/juce_Convolution.h
juce_dsp/frequency/juce_Convolution_test.cpp
juce_dsp/frequency/juce_FFT.cpp
juce_dsp/frequency/juce_FFT.h
juce_dsp/frequency/juce_FFT_test.cpp
juce_dsp/frequency/juce_Windowing.cpp
juce_dsp/frequency/juce_Windowing.h
juce_dsp/juce_dsp.cpp
juce_dsp/juce_dsp.h
juce_dsp/juce_dsp.mm
juce_dsp/maths/juce_FastMathApproximations.h
juce_dsp/maths/juce_LogRampedValue.h
juce_dsp/maths/juce_LogRampedValue_test.cpp
juce_dsp/maths/juce_LookupTable.cpp
juce_dsp/maths/juce_LookupTable.h
juce_dsp/maths/juce_Matrix.cpp
juce_dsp/maths/juce_Matrix.h
juce_dsp/maths/juce_Matrix_test.cpp
juce_dsp/maths/juce_Phase.h
juce_dsp/maths/juce_Polynomial.h
juce_dsp/maths/juce_SpecialFunctions.cpp
juce_dsp/maths/juce_SpecialFunctions.h
juce_dsp/native/juce_SIMDNativeOps_avx.cpp
juce_dsp/native/juce_SIMDNativeOps_avx.h
juce_dsp/native/juce_SIMDNativeOps_fallback.h
juce_dsp/native/juce_SIMDNativeOps_neon.cpp
juce_dsp/native/juce_SIMDNativeOps_neon.h
juce_dsp/native/juce_SIMDNativeOps_sse.cpp
juce_dsp/native/juce_SIMDNativeOps_sse.h
juce_dsp/processors/juce_BallisticsFilter.cpp
juce_dsp/processors/juce_BallisticsFilter.h
juce_dsp/processors/juce_DelayLine.cpp
juce_dsp/processors/juce_DelayLine.h
juce_dsp/processors/juce_DryWetMixer.cpp
juce_dsp/processors/juce_DryWetMixer.h
juce_dsp/processors/juce_FIRFilter.cpp
juce_dsp/processors/juce_FIRFilter.h
juce_dsp/processors/juce_FIRFilter_test.cpp
juce_dsp/processors/juce_FirstOrderTPTFilter.cpp
juce_dsp/processors/juce_FirstOrderTPTFilter.h
juce_dsp/processors/juce_IIRFilter.cpp
juce_dsp/processors/juce_IIRFilter.h
juce_dsp/processors/juce_IIRFilter_Impl.h
juce_dsp/processors/juce_LinkwitzRileyFilter.cpp
juce_dsp/processors/juce_LinkwitzRileyFilter.h
juce_dsp/processors/juce_Oversampling.cpp
juce_dsp/processors/juce_Oversampling.h
juce_dsp/processors/juce_Panner.cpp
juce_dsp/processors/juce_Panner.h
juce_dsp/processors/juce_ProcessContext.h
juce_dsp/processors/juce_ProcessorChain.h
juce_dsp/processors/juce_ProcessorChain_test.cpp
juce_dsp/processors/juce_ProcessorDuplicator.h
juce_dsp/processors/juce_ProcessorWrapper.h
juce_dsp/processors/juce_StateVariableFilter.h
juce_dsp/processors/juce_StateVariableTPTFilter.cpp
juce_dsp/processors/juce_StateVariableTPTFilter.h
juce_dsp/widgets/juce_Bias.h
juce_dsp/widgets/juce_Chorus.cpp
juce_dsp/widgets/juce_Chorus.h
juce_dsp/widgets/juce_Compressor.cpp
juce_dsp/widgets/juce_Compressor.h
juce_dsp/widgets/juce_Gain.h
juce_dsp/widgets/juce_LadderFilter.cpp
juce_dsp/widgets/juce_LadderFilter.h
juce_dsp/widgets/juce_Limiter.cpp
juce_dsp/widgets/juce_Limiter.h
juce_dsp/widgets/juce_NoiseGate.cpp
juce_dsp/widgets/juce_NoiseGate.h
juce_dsp/widgets/juce_Oscillator.h
juce_dsp/widgets/juce_Phaser.cpp
juce_dsp/widgets/juce_Phaser.h
juce_dsp/widgets/juce_Reverb.h
juce_dsp/widgets/juce_WaveShaper.h
)
set(files_juce_events
juce_events/broadcasters/juce_ActionBroadcaster.cpp
juce_events/broadcasters/juce_ActionBroadcaster.h
juce_events/broadcasters/juce_ActionListener.h
juce_events/broadcasters/juce_AsyncUpdater.cpp
juce_events/broadcasters/juce_AsyncUpdater.h
juce_events/broadcasters/juce_ChangeBroadcaster.cpp
juce_events/broadcasters/juce_ChangeBroadcaster.h
juce_events/broadcasters/juce_ChangeListener.h
juce_events/broadcasters/juce_LockingAsyncUpdater.cpp
juce_events/broadcasters/juce_LockingAsyncUpdater.h
juce_events/interprocess/juce_ConnectedChildProcess.cpp
juce_events/interprocess/juce_ConnectedChildProcess.h
juce_events/interprocess/juce_InterprocessConnection.cpp
juce_events/interprocess/juce_InterprocessConnection.h
juce_events/interprocess/juce_InterprocessConnectionServer.cpp
juce_events/interprocess/juce_InterprocessConnectionServer.h
juce_events/interprocess/juce_NetworkServiceDiscovery.cpp
juce_events/interprocess/juce_NetworkServiceDiscovery.h
juce_events/juce_events.cpp
juce_events/juce_events.h
juce_events/juce_events.mm
juce_events/messages/juce_ApplicationBase.cpp
juce_events/messages/juce_ApplicationBase.h
juce_events/messages/juce_CallbackMessage.h
juce_events/messages/juce_DeletedAtShutdown.cpp
juce_events/messages/juce_DeletedAtShutdown.h
juce_events/messages/juce_Initialisation.h
juce_events/messages/juce_Message.h
juce_events/messages/juce_MessageListener.cpp
juce_events/messages/juce_MessageListener.h
juce_events/messages/juce_MessageManager.cpp
juce_events/messages/juce_MessageManager.h
juce_events/messages/juce_MountedVolumeListChangeDetector.h
juce_events/messages/juce_NotificationType.h
juce_events/native/juce_EventLoopInternal_linux.h
juce_events/native/juce_EventLoop_linux.h
juce_events/native/juce_HiddenMessageWindow_windows.h
juce_events/native/juce_MessageManager_ios.mm
juce_events/native/juce_MessageManager_mac.mm
juce_events/native/juce_MessageQueue_mac.h
juce_events/native/juce_Messaging_android.cpp
juce_events/native/juce_Messaging_linux.cpp
juce_events/native/juce_Messaging_windows.cpp
juce_events/native/juce_RunningInUnity.h
juce_events/native/juce_ScopedLowPowerModeDisabler.cpp
juce_events/native/juce_ScopedLowPowerModeDisabler.h
juce_events/native/juce_WinRTWrapper_windows.cpp
juce_events/native/juce_WinRTWrapper_windows.h
juce_events/timers/juce_MultiTimer.cpp
juce_events/timers/juce_MultiTimer.h
juce_events/timers/juce_Timer.cpp
juce_events/timers/juce_Timer.h
)
set(files_juce_graphics
juce_graphics/colour/juce_Colour.cpp
juce_graphics/colour/juce_Colour.h
juce_graphics/colour/juce_ColourGradient.cpp
juce_graphics/colour/juce_ColourGradient.h
juce_graphics/colour/juce_Colours.cpp
juce_graphics/colour/juce_Colours.h
juce_graphics/colour/juce_FillType.cpp
juce_graphics/colour/juce_FillType.h
juce_graphics/colour/juce_PixelFormats.h
juce_graphics/contexts/juce_GraphicsContext.cpp
juce_graphics/contexts/juce_GraphicsContext.h
juce_graphics/contexts/juce_LowLevelGraphicsContext.h
juce_graphics/contexts/juce_LowLevelGraphicsPostScriptRenderer.cpp
juce_graphics/contexts/juce_LowLevelGraphicsPostScriptRenderer.h
juce_graphics/contexts/juce_LowLevelGraphicsSoftwareRenderer.cpp
juce_graphics/contexts/juce_LowLevelGraphicsSoftwareRenderer.h
juce_graphics/effects/juce_DropShadowEffect.cpp
juce_graphics/effects/juce_DropShadowEffect.h
juce_graphics/effects/juce_GlowEffect.cpp
juce_graphics/effects/juce_GlowEffect.h
juce_graphics/effects/juce_ImageEffectFilter.h
juce_graphics/fonts/juce_AttributedString.cpp
juce_graphics/fonts/juce_AttributedString.h
juce_graphics/fonts/juce_CustomTypeface.cpp
juce_graphics/fonts/juce_CustomTypeface.h
juce_graphics/fonts/juce_Font.cpp
juce_graphics/fonts/juce_Font.h
juce_graphics/fonts/juce_GlyphArrangement.cpp
juce_graphics/fonts/juce_GlyphArrangement.h
juce_graphics/fonts/juce_TextLayout.cpp
juce_graphics/fonts/juce_TextLayout.h
juce_graphics/fonts/juce_Typeface.cpp
juce_graphics/fonts/juce_Typeface.h
juce_graphics/geometry/juce_AffineTransform.cpp
juce_graphics/geometry/juce_AffineTransform.h
juce_graphics/geometry/juce_BorderSize.h
juce_graphics/geometry/juce_EdgeTable.cpp
juce_graphics/geometry/juce_EdgeTable.h
juce_graphics/geometry/juce_Line.h
juce_graphics/geometry/juce_Parallelogram.h
juce_graphics/geometry/juce_Path.cpp
juce_graphics/geometry/juce_Path.h
juce_graphics/geometry/juce_PathIterator.cpp
juce_graphics/geometry/juce_PathIterator.h
juce_graphics/geometry/juce_PathStrokeType.cpp
juce_graphics/geometry/juce_PathStrokeType.h
juce_graphics/geometry/juce_Point.h
juce_graphics/geometry/juce_Rectangle.h
juce_graphics/geometry/juce_RectangleList.h
juce_graphics/geometry/juce_Rectangle_test.cpp
juce_graphics/image_formats/jpglib/README
juce_graphics/image_formats/jpglib/cderror.h
juce_graphics/image_formats/jpglib/changes to libjpeg for JUCE.txt
juce_graphics/image_formats/jpglib/jcapimin.c
juce_graphics/image_formats/jpglib/jcapistd.c
juce_graphics/image_formats/jpglib/jccoefct.c
juce_graphics/image_formats/jpglib/jccolor.c
juce_graphics/image_formats/jpglib/jcdctmgr.c
juce_graphics/image_formats/jpglib/jchuff.c
juce_graphics/image_formats/jpglib/jchuff.h
juce_graphics/image_formats/jpglib/jcinit.c
juce_graphics/image_formats/jpglib/jcmainct.c
juce_graphics/image_formats/jpglib/jcmarker.c
juce_graphics/image_formats/jpglib/jcmaster.c
juce_graphics/image_formats/jpglib/jcomapi.c
juce_graphics/image_formats/jpglib/jconfig.h
juce_graphics/image_formats/jpglib/jcparam.c
juce_graphics/image_formats/jpglib/jcphuff.c
juce_graphics/image_formats/jpglib/jcprepct.c
juce_graphics/image_formats/jpglib/jcsample.c
juce_graphics/image_formats/jpglib/jctrans.c
juce_graphics/image_formats/jpglib/jdapimin.c
juce_graphics/image_formats/jpglib/jdapistd.c
juce_graphics/image_formats/jpglib/jdatasrc.c
juce_graphics/image_formats/jpglib/jdcoefct.c
juce_graphics/image_formats/jpglib/jdcolor.c
juce_graphics/image_formats/jpglib/jdct.h
juce_graphics/image_formats/jpglib/jddctmgr.c
juce_graphics/image_formats/jpglib/jdhuff.c
juce_graphics/image_formats/jpglib/jdhuff.h
juce_graphics/image_formats/jpglib/jdinput.c
juce_graphics/image_formats/jpglib/jdmainct.c
juce_graphics/image_formats/jpglib/jdmarker.c
juce_graphics/image_formats/jpglib/jdmaster.c
juce_graphics/image_formats/jpglib/jdmerge.c
juce_graphics/image_formats/jpglib/jdphuff.c
juce_graphics/image_formats/jpglib/jdpostct.c
juce_graphics/image_formats/jpglib/jdsample.c
juce_graphics/image_formats/jpglib/jdtrans.c
juce_graphics/image_formats/jpglib/jerror.c
juce_graphics/image_formats/jpglib/jerror.h
juce_graphics/image_formats/jpglib/jfdctflt.c
juce_graphics/image_formats/jpglib/jfdctfst.c
juce_graphics/image_formats/jpglib/jfdctint.c
juce_graphics/image_formats/jpglib/jidctflt.c
juce_graphics/image_formats/jpglib/jidctfst.c
juce_graphics/image_formats/jpglib/jidctint.c
juce_graphics/image_formats/jpglib/jidctred.c
juce_graphics/image_formats/jpglib/jinclude.h
juce_graphics/image_formats/jpglib/jmemmgr.c
juce_graphics/image_formats/jpglib/jmemnobs.c
juce_graphics/image_formats/jpglib/jmemsys.h
juce_graphics/image_formats/jpglib/jmorecfg.h
juce_graphics/image_formats/jpglib/jpegint.h
juce_graphics/image_formats/jpglib/jpeglib.h
juce_graphics/image_formats/jpglib/jquant1.c
juce_graphics/image_formats/jpglib/jquant2.c
juce_graphics/image_formats/jpglib/jutils.c
juce_graphics/image_formats/jpglib/jversion.h
juce_graphics/image_formats/jpglib/transupp.c
juce_graphics/image_formats/jpglib/transupp.h
juce_graphics/image_formats/juce_GIFLoader.cpp
juce_graphics/image_formats/juce_JPEGLoader.cpp
juce_graphics/image_formats/juce_PNGLoader.cpp
juce_graphics/image_formats/pnglib/LICENSE
juce_graphics/image_formats/pnglib/libpng_readme.txt
juce_graphics/image_formats/pnglib/png.c
juce_graphics/image_formats/pnglib/png.h
juce_graphics/image_formats/pnglib/pngconf.h
juce_graphics/image_formats/pnglib/pngdebug.h
juce_graphics/image_formats/pnglib/pngerror.c
juce_graphics/image_formats/pnglib/pngget.c
juce_graphics/image_formats/pnglib/pnginfo.h
juce_graphics/image_formats/pnglib/pngmem.c
juce_graphics/image_formats/pnglib/pngpread.c
juce_graphics/image_formats/pnglib/pngpriv.h
juce_graphics/image_formats/pnglib/pngread.c
juce_graphics/image_formats/pnglib/pngrio.c
juce_graphics/image_formats/pnglib/pngrtran.c
juce_graphics/image_formats/pnglib/pngrutil.c
juce_graphics/image_formats/pnglib/pngset.c
juce_graphics/image_formats/pnglib/pngstruct.h
juce_graphics/image_formats/pnglib/pngtrans.c
juce_graphics/image_formats/pnglib/pngwio.c
juce_graphics/image_formats/pnglib/pngwrite.c
juce_graphics/image_formats/pnglib/pngwtran.c
juce_graphics/image_formats/pnglib/pngwutil.c
juce_graphics/images/juce_Image.cpp
juce_graphics/images/juce_Image.h
juce_graphics/images/juce_ImageCache.cpp
juce_graphics/images/juce_ImageCache.h
juce_graphics/images/juce_ImageConvolutionKernel.cpp
juce_graphics/images/juce_ImageConvolutionKernel.h
juce_graphics/images/juce_ImageFileFormat.cpp
juce_graphics/images/juce_ImageFileFormat.h
juce_graphics/images/juce_ScaledImage.h
juce_graphics/juce_graphics.cpp
juce_graphics/juce_graphics.h
juce_graphics/juce_graphics.mm
juce_graphics/native/juce_CoreGraphicsContext_mac.h
juce_graphics/native/juce_CoreGraphicsContext_mac.mm
juce_graphics/native/juce_CoreGraphicsHelpers_mac.h
juce_graphics/native/juce_Direct2DGraphicsContext_windows.cpp
juce_graphics/native/juce_Direct2DGraphicsContext_windows.h
juce_graphics/native/juce_DirectWriteTypeLayout_windows.cpp
juce_graphics/native/juce_DirectWriteTypeface_windows.cpp
juce_graphics/native/juce_Fonts_android.cpp
juce_graphics/native/juce_Fonts_freetype.cpp
juce_graphics/native/juce_Fonts_linux.cpp
juce_graphics/native/juce_Fonts_mac.mm
juce_graphics/native/juce_Fonts_windows.cpp
juce_graphics/native/juce_GraphicsContext_android.cpp
juce_graphics/native/juce_IconHelpers_android.cpp
juce_graphics/native/juce_IconHelpers_linux.cpp
juce_graphics/native/juce_IconHelpers_mac.cpp
juce_graphics/native/juce_IconHelpers_windows.cpp
juce_graphics/native/juce_RenderingHelpers.h
juce_graphics/placement/juce_Justification.h
juce_graphics/placement/juce_RectanglePlacement.cpp
juce_graphics/placement/juce_RectanglePlacement.h
)
set(files_juce_gui_basics
juce_gui_basics/accessibility/enums/juce_AccessibilityActions.h
juce_gui_basics/accessibility/enums/juce_AccessibilityEvent.h
juce_gui_basics/accessibility/enums/juce_AccessibilityRole.h
juce_gui_basics/accessibility/interfaces/juce_AccessibilityCellInterface.h
juce_gui_basics/accessibility/interfaces/juce_AccessibilityTableInterface.h
juce_gui_basics/accessibility/interfaces/juce_AccessibilityTextInterface.h
juce_gui_basics/accessibility/interfaces/juce_AccessibilityValueInterface.h
juce_gui_basics/accessibility/juce_AccessibilityHandler.cpp
juce_gui_basics/accessibility/juce_AccessibilityHandler.h
juce_gui_basics/accessibility/juce_AccessibilityState.h
juce_gui_basics/application/juce_Application.cpp
juce_gui_basics/application/juce_Application.h
juce_gui_basics/buttons/juce_ArrowButton.cpp
juce_gui_basics/buttons/juce_ArrowButton.h
juce_gui_basics/buttons/juce_Button.cpp
juce_gui_basics/buttons/juce_Button.h
juce_gui_basics/buttons/juce_DrawableButton.cpp
juce_gui_basics/buttons/juce_DrawableButton.h
juce_gui_basics/buttons/juce_HyperlinkButton.cpp
juce_gui_basics/buttons/juce_HyperlinkButton.h
juce_gui_basics/buttons/juce_ImageButton.cpp
juce_gui_basics/buttons/juce_ImageButton.h
juce_gui_basics/buttons/juce_ShapeButton.cpp
juce_gui_basics/buttons/juce_ShapeButton.h
juce_gui_basics/buttons/juce_TextButton.cpp
juce_gui_basics/buttons/juce_TextButton.h
juce_gui_basics/buttons/juce_ToggleButton.cpp
juce_gui_basics/buttons/juce_ToggleButton.h
juce_gui_basics/buttons/juce_ToolbarButton.cpp
juce_gui_basics/buttons/juce_ToolbarButton.h
juce_gui_basics/commands/juce_ApplicationCommandID.h
juce_gui_basics/commands/juce_ApplicationCommandInfo.cpp
juce_gui_basics/commands/juce_ApplicationCommandInfo.h
juce_gui_basics/commands/juce_ApplicationCommandManager.cpp
juce_gui_basics/commands/juce_ApplicationCommandManager.h
juce_gui_basics/commands/juce_ApplicationCommandTarget.cpp
juce_gui_basics/commands/juce_ApplicationCommandTarget.h
juce_gui_basics/commands/juce_KeyPressMappingSet.cpp
juce_gui_basics/commands/juce_KeyPressMappingSet.h
juce_gui_basics/components/juce_CachedComponentImage.h
juce_gui_basics/components/juce_Component.cpp
juce_gui_basics/components/juce_Component.h
juce_gui_basics/components/juce_ComponentListener.cpp
juce_gui_basics/components/juce_ComponentListener.h
juce_gui_basics/components/juce_ComponentTraverser.h
juce_gui_basics/components/juce_FocusTraverser.cpp
juce_gui_basics/components/juce_FocusTraverser.h
juce_gui_basics/components/juce_ModalComponentManager.cpp
juce_gui_basics/components/juce_ModalComponentManager.h
juce_gui_basics/desktop/juce_Desktop.cpp
juce_gui_basics/desktop/juce_Desktop.h
juce_gui_basics/desktop/juce_Displays.cpp
juce_gui_basics/desktop/juce_Displays.h
juce_gui_basics/detail/juce_AccessibilityHelpers.cpp
juce_gui_basics/detail/juce_AccessibilityHelpers.h
juce_gui_basics/detail/juce_AlertWindowHelpers.h
juce_gui_basics/detail/juce_ButtonAccessibilityHandler.h
juce_gui_basics/detail/juce_ComponentHelpers.h
juce_gui_basics/detail/juce_CustomMouseCursorInfo.h
juce_gui_basics/detail/juce_FocusHelpers.h
juce_gui_basics/detail/juce_FocusRestorer.h
juce_gui_basics/detail/juce_LookAndFeelHelpers.h
juce_gui_basics/detail/juce_MouseInputSourceImpl.h
juce_gui_basics/detail/juce_MouseInputSourceList.h
juce_gui_basics/detail/juce_PointerState.h
juce_gui_basics/detail/juce_ScalingHelpers.h
juce_gui_basics/detail/juce_ScopedContentSharerImpl.h
juce_gui_basics/detail/juce_ScopedContentSharerInterface.h
juce_gui_basics/detail/juce_ScopedMessageBoxImpl.h
juce_gui_basics/detail/juce_ScopedMessageBoxInterface.h
juce_gui_basics/detail/juce_ToolbarItemDragAndDropOverlayComponent.h
juce_gui_basics/detail/juce_TopLevelWindowManager.h
juce_gui_basics/detail/juce_ViewportHelpers.h
juce_gui_basics/detail/juce_WindowingHelpers.h
juce_gui_basics/drawables/juce_Drawable.cpp
juce_gui_basics/drawables/juce_Drawable.h
juce_gui_basics/drawables/juce_DrawableComposite.cpp
juce_gui_basics/drawables/juce_DrawableComposite.h
juce_gui_basics/drawables/juce_DrawableImage.cpp
juce_gui_basics/drawables/juce_DrawableImage.h
juce_gui_basics/drawables/juce_DrawablePath.cpp
juce_gui_basics/drawables/juce_DrawablePath.h
juce_gui_basics/drawables/juce_DrawableRectangle.cpp
juce_gui_basics/drawables/juce_DrawableRectangle.h
juce_gui_basics/drawables/juce_DrawableShape.cpp
juce_gui_basics/drawables/juce_DrawableShape.h
juce_gui_basics/drawables/juce_DrawableText.cpp
juce_gui_basics/drawables/juce_DrawableText.h
juce_gui_basics/drawables/juce_SVGParser.cpp
juce_gui_basics/filebrowser/juce_ContentSharer.cpp
juce_gui_basics/filebrowser/juce_ContentSharer.h
juce_gui_basics/filebrowser/juce_DirectoryContentsDisplayComponent.cpp
juce_gui_basics/filebrowser/juce_DirectoryContentsDisplayComponent.h
juce_gui_basics/filebrowser/juce_DirectoryContentsList.cpp
juce_gui_basics/filebrowser/juce_DirectoryContentsList.h
juce_gui_basics/filebrowser/juce_FileBrowserComponent.cpp
juce_gui_basics/filebrowser/juce_FileBrowserComponent.h
juce_gui_basics/filebrowser/juce_FileBrowserListener.h
juce_gui_basics/filebrowser/juce_FileChooser.cpp
juce_gui_basics/filebrowser/juce_FileChooser.h
juce_gui_basics/filebrowser/juce_FileChooserDialogBox.cpp
juce_gui_basics/filebrowser/juce_FileChooserDialogBox.h
juce_gui_basics/filebrowser/juce_FileListComponent.cpp
juce_gui_basics/filebrowser/juce_FileListComponent.h
juce_gui_basics/filebrowser/juce_FilePreviewComponent.h
juce_gui_basics/filebrowser/juce_FileSearchPathListComponent.cpp
juce_gui_basics/filebrowser/juce_FileSearchPathListComponent.h
juce_gui_basics/filebrowser/juce_FileTreeComponent.cpp
juce_gui_basics/filebrowser/juce_FileTreeComponent.h
juce_gui_basics/filebrowser/juce_FilenameComponent.cpp
juce_gui_basics/filebrowser/juce_FilenameComponent.h
juce_gui_basics/filebrowser/juce_ImagePreviewComponent.cpp
juce_gui_basics/filebrowser/juce_ImagePreviewComponent.h
juce_gui_basics/juce_gui_basics.cpp
juce_gui_basics/juce_gui_basics.h
juce_gui_basics/juce_gui_basics.mm
juce_gui_basics/keyboard/juce_CaretComponent.cpp
juce_gui_basics/keyboard/juce_CaretComponent.h
juce_gui_basics/keyboard/juce_KeyListener.cpp
juce_gui_basics/keyboard/juce_KeyListener.h
juce_gui_basics/keyboard/juce_KeyPress.cpp
juce_gui_basics/keyboard/juce_KeyPress.h
juce_gui_basics/keyboard/juce_KeyboardFocusTraverser.cpp
juce_gui_basics/keyboard/juce_KeyboardFocusTraverser.h
juce_gui_basics/keyboard/juce_ModifierKeys.cpp
juce_gui_basics/keyboard/juce_ModifierKeys.h
juce_gui_basics/keyboard/juce_SystemClipboard.h
juce_gui_basics/keyboard/juce_TextEditorKeyMapper.h
juce_gui_basics/keyboard/juce_TextInputTarget.h
juce_gui_basics/layout/juce_AnimatedPosition.h
juce_gui_basics/layout/juce_AnimatedPositionBehaviours.h
juce_gui_basics/layout/juce_BorderedComponentBoundsConstrainer.cpp
juce_gui_basics/layout/juce_BorderedComponentBoundsConstrainer.h
juce_gui_basics/layout/juce_ComponentAnimator.cpp
juce_gui_basics/layout/juce_ComponentAnimator.h
juce_gui_basics/layout/juce_ComponentBoundsConstrainer.cpp
juce_gui_basics/layout/juce_ComponentBoundsConstrainer.h
juce_gui_basics/layout/juce_ComponentBuilder.cpp
juce_gui_basics/layout/juce_ComponentBuilder.h
juce_gui_basics/layout/juce_ComponentMovementWatcher.cpp
juce_gui_basics/layout/juce_ComponentMovementWatcher.h
juce_gui_basics/layout/juce_ConcertinaPanel.cpp
juce_gui_basics/layout/juce_ConcertinaPanel.h
juce_gui_basics/layout/juce_FlexBox.cpp
juce_gui_basics/layout/juce_FlexBox.h
juce_gui_basics/layout/juce_FlexItem.h
juce_gui_basics/layout/juce_Grid.cpp
juce_gui_basics/layout/juce_Grid.h
juce_gui_basics/layout/juce_GridItem.cpp
juce_gui_basics/layout/juce_GridItem.h
juce_gui_basics/layout/juce_GroupComponent.cpp
juce_gui_basics/layout/juce_GroupComponent.h
juce_gui_basics/layout/juce_MultiDocumentPanel.cpp
juce_gui_basics/layout/juce_MultiDocumentPanel.h
juce_gui_basics/layout/juce_ResizableBorderComponent.cpp
juce_gui_basics/layout/juce_ResizableBorderComponent.h
juce_gui_basics/layout/juce_ResizableCornerComponent.cpp
juce_gui_basics/layout/juce_ResizableCornerComponent.h
juce_gui_basics/layout/juce_ResizableEdgeComponent.cpp
juce_gui_basics/layout/juce_ResizableEdgeComponent.h
juce_gui_basics/layout/juce_ScrollBar.cpp
juce_gui_basics/layout/juce_ScrollBar.h
juce_gui_basics/layout/juce_SidePanel.cpp
juce_gui_basics/layout/juce_SidePanel.h
juce_gui_basics/layout/juce_StretchableLayoutManager.cpp
juce_gui_basics/layout/juce_StretchableLayoutManager.h
juce_gui_basics/layout/juce_StretchableLayoutResizerBar.cpp
juce_gui_basics/layout/juce_StretchableLayoutResizerBar.h
juce_gui_basics/layout/juce_StretchableObjectResizer.cpp
juce_gui_basics/layout/juce_StretchableObjectResizer.h
juce_gui_basics/layout/juce_TabbedButtonBar.cpp
juce_gui_basics/layout/juce_TabbedButtonBar.h
juce_gui_basics/layout/juce_TabbedComponent.cpp
juce_gui_basics/layout/juce_TabbedComponent.h
juce_gui_basics/layout/juce_Viewport.cpp
juce_gui_basics/layout/juce_Viewport.h
juce_gui_basics/lookandfeel/juce_LookAndFeel.cpp
juce_gui_basics/lookandfeel/juce_LookAndFeel.h
juce_gui_basics/lookandfeel/juce_LookAndFeel_V1.cpp
juce_gui_basics/lookandfeel/juce_LookAndFeel_V1.h
juce_gui_basics/lookandfeel/juce_LookAndFeel_V2.cpp
juce_gui_basics/lookandfeel/juce_LookAndFeel_V2.h
juce_gui_basics/lookandfeel/juce_LookAndFeel_V3.cpp
juce_gui_basics/lookandfeel/juce_LookAndFeel_V3.h
juce_gui_basics/lookandfeel/juce_LookAndFeel_V4.cpp
juce_gui_basics/lookandfeel/juce_LookAndFeel_V4.h
juce_gui_basics/menus/juce_BurgerMenuComponent.cpp
juce_gui_basics/menus/juce_BurgerMenuComponent.h
juce_gui_basics/menus/juce_MenuBarComponent.cpp
juce_gui_basics/menus/juce_MenuBarComponent.h
juce_gui_basics/menus/juce_MenuBarModel.cpp
juce_gui_basics/menus/juce_MenuBarModel.h
juce_gui_basics/menus/juce_PopupMenu.cpp
juce_gui_basics/menus/juce_PopupMenu.h
juce_gui_basics/misc/juce_BubbleComponent.cpp
juce_gui_basics/misc/juce_BubbleComponent.h
juce_gui_basics/misc/juce_DropShadower.cpp
juce_gui_basics/misc/juce_DropShadower.h
juce_gui_basics/misc/juce_FocusOutline.cpp
juce_gui_basics/misc/juce_FocusOutline.h
juce_gui_basics/misc/juce_JUCESplashScreen.cpp
juce_gui_basics/misc/juce_JUCESplashScreen.h
juce_gui_basics/mouse/juce_ComponentDragger.cpp
juce_gui_basics/mouse/juce_ComponentDragger.h
juce_gui_basics/mouse/juce_DragAndDropContainer.cpp
juce_gui_basics/mouse/juce_DragAndDropContainer.h
juce_gui_basics/mouse/juce_DragAndDropTarget.h
juce_gui_basics/mouse/juce_FileDragAndDropTarget.h
juce_gui_basics/mouse/juce_LassoComponent.h
juce_gui_basics/mouse/juce_MouseCursor.cpp
juce_gui_basics/mouse/juce_MouseCursor.h
juce_gui_basics/mouse/juce_MouseEvent.cpp
juce_gui_basics/mouse/juce_MouseEvent.h
juce_gui_basics/mouse/juce_MouseInactivityDetector.cpp
juce_gui_basics/mouse/juce_MouseInactivityDetector.h
juce_gui_basics/mouse/juce_MouseInputSource.cpp
juce_gui_basics/mouse/juce_MouseInputSource.h
juce_gui_basics/mouse/juce_MouseListener.cpp
juce_gui_basics/mouse/juce_MouseListener.h
juce_gui_basics/mouse/juce_SelectedItemSet.h
juce_gui_basics/mouse/juce_TextDragAndDropTarget.h
juce_gui_basics/mouse/juce_TooltipClient.h
juce_gui_basics/native/accessibility/juce_Accessibility.cpp
juce_gui_basics/native/accessibility/juce_AccessibilityElement_windows.cpp
juce_gui_basics/native/accessibility/juce_AccessibilityElement_windows.h
juce_gui_basics/native/accessibility/juce_AccessibilitySharedCode_mac.mm
juce_gui_basics/native/accessibility/juce_AccessibilityTextHelpers.h
juce_gui_basics/native/accessibility/juce_AccessibilityTextHelpers_test.cpp
juce_gui_basics/native/accessibility/juce_Accessibility_android.cpp
juce_gui_basics/native/accessibility/juce_Accessibility_ios.mm
juce_gui_basics/native/accessibility/juce_Accessibility_mac.mm
juce_gui_basics/native/accessibility/juce_Accessibility_windows.cpp
juce_gui_basics/native/accessibility/juce_ComInterfaces_windows.h
juce_gui_basics/native/accessibility/juce_UIAExpandCollapseProvider_windows.h
juce_gui_basics/native/accessibility/juce_UIAGridItemProvider_windows.h
juce_gui_basics/native/accessibility/juce_UIAGridProvider_windows.h
juce_gui_basics/native/accessibility/juce_UIAHelpers_windows.h
juce_gui_basics/native/accessibility/juce_UIAInvokeProvider_windows.h
juce_gui_basics/native/accessibility/juce_UIAProviderBase_windows.h
juce_gui_basics/native/accessibility/juce_UIAProviders_windows.h
juce_gui_basics/native/accessibility/juce_UIARangeValueProvider_windows.h
juce_gui_basics/native/accessibility/juce_UIASelectionProvider_windows.h
juce_gui_basics/native/accessibility/juce_UIATextProvider_windows.h
juce_gui_basics/native/accessibility/juce_UIAToggleProvider_windows.h
juce_gui_basics/native/accessibility/juce_UIATransformProvider_windows.h
juce_gui_basics/native/accessibility/juce_UIAValueProvider_windows.h
juce_gui_basics/native/accessibility/juce_UIAWindowProvider_windows.h
juce_gui_basics/native/accessibility/juce_WindowsUIAWrapper_windows.h
juce_gui_basics/native/java/app/com/rmsl/juce/ComponentPeerView.java
juce_gui_basics/native/java/app/com/rmsl/juce/JuceContentProviderCursor.java
juce_gui_basics/native/java/app/com/rmsl/juce/JuceContentProviderFileObserver.java
juce_gui_basics/native/javaopt/app/com/rmsl/juce/JuceActivity.java
juce_gui_basics/native/javaopt/app/com/rmsl/juce/JuceSharingContentProvider.java
juce_gui_basics/native/javaopt/app/com/rmsl/juce/Receiver.java
juce_gui_basics/native/juce_CGMetalLayerRenderer_mac.h
juce_gui_basics/native/juce_ContentSharer_android.cpp
juce_gui_basics/native/juce_ContentSharer_ios.cpp
juce_gui_basics/native/juce_DragAndDrop_linux.cpp
juce_gui_basics/native/juce_DragAndDrop_windows.cpp
juce_gui_basics/native/juce_FileChooser_android.cpp
juce_gui_basics/native/juce_FileChooser_ios.mm
juce_gui_basics/native/juce_FileChooser_linux.cpp
juce_gui_basics/native/juce_FileChooser_mac.mm
juce_gui_basics/native/juce_FileChooser_windows.cpp
juce_gui_basics/native/juce_MainMenu_mac.mm
juce_gui_basics/native/juce_MouseCursor_mac.mm
juce_gui_basics/native/juce_MultiTouchMapper.h
juce_gui_basics/native/juce_NSViewComponentPeer_mac.mm
juce_gui_basics/native/juce_NativeMessageBox_android.cpp
juce_gui_basics/native/juce_NativeMessageBox_ios.mm
juce_gui_basics/native/juce_NativeMessageBox_linux.cpp
juce_gui_basics/native/juce_NativeMessageBox_mac.mm
juce_gui_basics/native/juce_NativeMessageBox_windows.cpp
juce_gui_basics/native/juce_NativeModalWrapperComponent_ios.h
juce_gui_basics/native/juce_PerScreenDisplayLinks_mac.h
juce_gui_basics/native/juce_ScopedDPIAwarenessDisabler.cpp
juce_gui_basics/native/juce_ScopedDPIAwarenessDisabler.h
juce_gui_basics/native/juce_ScopedThreadDPIAwarenessSetter_windows.h
juce_gui_basics/native/juce_ScopedWindowAssociation_linux.h
juce_gui_basics/native/juce_UIViewComponentPeer_ios.mm
juce_gui_basics/native/juce_WindowUtils_android.cpp
juce_gui_basics/native/juce_WindowUtils_ios.mm
juce_gui_basics/native/juce_WindowUtils_linux.cpp
juce_gui_basics/native/juce_WindowUtils_mac.mm
juce_gui_basics/native/juce_WindowUtils_windows.cpp
juce_gui_basics/native/juce_Windowing_android.cpp
juce_gui_basics/native/juce_Windowing_ios.mm
juce_gui_basics/native/juce_Windowing_linux.cpp
juce_gui_basics/native/juce_Windowing_mac.mm
juce_gui_basics/native/juce_Windowing_windows.cpp
juce_gui_basics/native/juce_WindowsHooks_windows.cpp
juce_gui_basics/native/juce_WindowsHooks_windows.h
juce_gui_basics/native/juce_XSymbols_linux.cpp
juce_gui_basics/native/juce_XSymbols_linux.h
juce_gui_basics/native/juce_XWindowSystem_linux.cpp
juce_gui_basics/native/juce_XWindowSystem_linux.h
juce_gui_basics/positioning/juce_MarkerList.cpp
juce_gui_basics/positioning/juce_MarkerList.h
juce_gui_basics/positioning/juce_RelativeCoordinate.cpp
juce_gui_basics/positioning/juce_RelativeCoordinate.h
juce_gui_basics/positioning/juce_RelativeCoordinatePositioner.cpp
juce_gui_basics/positioning/juce_RelativeCoordinatePositioner.h
juce_gui_basics/positioning/juce_RelativeParallelogram.cpp
juce_gui_basics/positioning/juce_RelativeParallelogram.h
juce_gui_basics/positioning/juce_RelativePoint.cpp
juce_gui_basics/positioning/juce_RelativePoint.h
juce_gui_basics/positioning/juce_RelativePointPath.cpp
juce_gui_basics/positioning/juce_RelativePointPath.h
juce_gui_basics/positioning/juce_RelativeRectangle.cpp
juce_gui_basics/positioning/juce_RelativeRectangle.h
juce_gui_basics/properties/juce_BooleanPropertyComponent.cpp
juce_gui_basics/properties/juce_BooleanPropertyComponent.h
juce_gui_basics/properties/juce_ButtonPropertyComponent.cpp
juce_gui_basics/properties/juce_ButtonPropertyComponent.h
juce_gui_basics/properties/juce_ChoicePropertyComponent.cpp
juce_gui_basics/properties/juce_ChoicePropertyComponent.h
juce_gui_basics/properties/juce_MultiChoicePropertyComponent.cpp
juce_gui_basics/properties/juce_MultiChoicePropertyComponent.h
juce_gui_basics/properties/juce_PropertyComponent.cpp
juce_gui_basics/properties/juce_PropertyComponent.h
juce_gui_basics/properties/juce_PropertyPanel.cpp
juce_gui_basics/properties/juce_PropertyPanel.h
juce_gui_basics/properties/juce_SliderPropertyComponent.cpp
juce_gui_basics/properties/juce_SliderPropertyComponent.h
juce_gui_basics/properties/juce_TextPropertyComponent.cpp
juce_gui_basics/properties/juce_TextPropertyComponent.h
juce_gui_basics/widgets/juce_ComboBox.cpp
juce_gui_basics/widgets/juce_ComboBox.h
juce_gui_basics/widgets/juce_ImageComponent.cpp
juce_gui_basics/widgets/juce_ImageComponent.h
juce_gui_basics/widgets/juce_Label.cpp
juce_gui_basics/widgets/juce_Label.h
juce_gui_basics/widgets/juce_ListBox.cpp
juce_gui_basics/widgets/juce_ListBox.h
juce_gui_basics/widgets/juce_ProgressBar.cpp
juce_gui_basics/widgets/juce_ProgressBar.h
juce_gui_basics/widgets/juce_Slider.cpp
juce_gui_basics/widgets/juce_Slider.h
juce_gui_basics/widgets/juce_TableHeaderComponent.cpp
juce_gui_basics/widgets/juce_TableHeaderComponent.h
juce_gui_basics/widgets/juce_TableListBox.cpp
juce_gui_basics/widgets/juce_TableListBox.h
juce_gui_basics/widgets/juce_TextEditor.cpp
juce_gui_basics/widgets/juce_TextEditor.h
juce_gui_basics/widgets/juce_Toolbar.cpp
juce_gui_basics/widgets/juce_Toolbar.h
juce_gui_basics/widgets/juce_ToolbarItemComponent.cpp
juce_gui_basics/widgets/juce_ToolbarItemComponent.h
juce_gui_basics/widgets/juce_ToolbarItemFactory.h
juce_gui_basics/widgets/juce_ToolbarItemPalette.cpp
juce_gui_basics/widgets/juce_ToolbarItemPalette.h
juce_gui_basics/widgets/juce_TreeView.cpp
juce_gui_basics/widgets/juce_TreeView.h
juce_gui_basics/windows/juce_AlertWindow.cpp
juce_gui_basics/windows/juce_AlertWindow.h
juce_gui_basics/windows/juce_CallOutBox.cpp
juce_gui_basics/windows/juce_CallOutBox.h
juce_gui_basics/windows/juce_ComponentPeer.cpp
juce_gui_basics/windows/juce_ComponentPeer.h
juce_gui_basics/windows/juce_DialogWindow.cpp
juce_gui_basics/windows/juce_DialogWindow.h
juce_gui_basics/windows/juce_DocumentWindow.cpp
juce_gui_basics/windows/juce_DocumentWindow.h
juce_gui_basics/windows/juce_MessageBoxOptions.cpp
juce_gui_basics/windows/juce_MessageBoxOptions.h
juce_gui_basics/windows/juce_NativeMessageBox.cpp
juce_gui_basics/windows/juce_NativeMessageBox.h
juce_gui_basics/windows/juce_ResizableWindow.cpp
juce_gui_basics/windows/juce_ResizableWindow.h
juce_gui_basics/windows/juce_ScopedMessageBox.cpp
juce_gui_basics/windows/juce_ScopedMessageBox.h
juce_gui_basics/windows/juce_ThreadWithProgressWindow.cpp
juce_gui_basics/windows/juce_ThreadWithProgressWindow.h
juce_gui_basics/windows/juce_TooltipWindow.cpp
juce_gui_basics/windows/juce_TooltipWindow.h
juce_gui_basics/windows/juce_TopLevelWindow.cpp
juce_gui_basics/windows/juce_TopLevelWindow.h
juce_gui_basics/windows/juce_VBlankAttachment.cpp
juce_gui_basics/windows/juce_VBlankAttachment.h
juce_gui_basics/windows/juce_WindowUtils.h
)
set(files_juce_gui_extra
juce_gui_extra/code_editor/juce_CPlusPlusCodeTokeniser.cpp
juce_gui_extra/code_editor/juce_CPlusPlusCodeTokeniser.h
juce_gui_extra/code_editor/juce_CPlusPlusCodeTokeniserFunctions.h
juce_gui_extra/code_editor/juce_CodeDocument.cpp
juce_gui_extra/code_editor/juce_CodeDocument.h
juce_gui_extra/code_editor/juce_CodeEditorComponent.cpp
juce_gui_extra/code_editor/juce_CodeEditorComponent.h
juce_gui_extra/code_editor/juce_CodeTokeniser.h
juce_gui_extra/code_editor/juce_LuaCodeTokeniser.cpp
juce_gui_extra/code_editor/juce_LuaCodeTokeniser.h
juce_gui_extra/code_editor/juce_XMLCodeTokeniser.cpp
juce_gui_extra/code_editor/juce_XMLCodeTokeniser.h
juce_gui_extra/documents/juce_FileBasedDocument.cpp
juce_gui_extra/documents/juce_FileBasedDocument.h
juce_gui_extra/embedding/juce_ActiveXControlComponent.h
juce_gui_extra/embedding/juce_AndroidViewComponent.h
juce_gui_extra/embedding/juce_HWNDComponent.h
juce_gui_extra/embedding/juce_NSViewComponent.h
juce_gui_extra/embedding/juce_UIViewComponent.h
juce_gui_extra/embedding/juce_XEmbedComponent.h
juce_gui_extra/juce_gui_extra.cpp
juce_gui_extra/juce_gui_extra.h
juce_gui_extra/juce_gui_extra.mm
juce_gui_extra/misc/juce_AnimatedAppComponent.cpp
juce_gui_extra/misc/juce_AnimatedAppComponent.h
juce_gui_extra/misc/juce_AppleRemote.h
juce_gui_extra/misc/juce_BubbleMessageComponent.cpp
juce_gui_extra/misc/juce_BubbleMessageComponent.h
juce_gui_extra/misc/juce_ColourSelector.cpp
juce_gui_extra/misc/juce_ColourSelector.h
juce_gui_extra/misc/juce_KeyMappingEditorComponent.cpp
juce_gui_extra/misc/juce_KeyMappingEditorComponent.h
juce_gui_extra/misc/juce_LiveConstantEditor.cpp
juce_gui_extra/misc/juce_LiveConstantEditor.h
juce_gui_extra/misc/juce_PreferencesPanel.cpp
juce_gui_extra/misc/juce_PreferencesPanel.h
juce_gui_extra/misc/juce_PushNotifications.cpp
juce_gui_extra/misc/juce_PushNotifications.h
juce_gui_extra/misc/juce_RecentlyOpenedFilesList.cpp
juce_gui_extra/misc/juce_RecentlyOpenedFilesList.h
juce_gui_extra/misc/juce_SplashScreen.cpp
juce_gui_extra/misc/juce_SplashScreen.h
juce_gui_extra/misc/juce_SystemTrayIconComponent.cpp
juce_gui_extra/misc/juce_SystemTrayIconComponent.h
juce_gui_extra/misc/juce_WebBrowserComponent.cpp
juce_gui_extra/misc/juce_WebBrowserComponent.h
juce_gui_extra/native/java/app/com/rmsl/juce/JuceWebView.java
juce_gui_extra/native/java/app/com/rmsl/juce/JuceWebView21.java
juce_gui_extra/native/javaopt/app/com/rmsl/juce/JuceFirebaseInstanceIdService.java
juce_gui_extra/native/javaopt/app/com/rmsl/juce/JuceFirebaseMessagingService.java
juce_gui_extra/native/juce_ActiveXComponent_windows.cpp
juce_gui_extra/native/juce_AndroidViewComponent.cpp
juce_gui_extra/native/juce_AppleRemote_mac.mm
juce_gui_extra/native/juce_HWNDComponent_windows.cpp
juce_gui_extra/native/juce_NSViewComponent_mac.mm
juce_gui_extra/native/juce_NSViewFrameWatcher_mac.h
juce_gui_extra/native/juce_PushNotifications_android.cpp
juce_gui_extra/native/juce_PushNotifications_ios.cpp
juce_gui_extra/native/juce_PushNotifications_mac.cpp
juce_gui_extra/native/juce_SystemTrayIcon_linux.cpp
juce_gui_extra/native/juce_SystemTrayIcon_mac.cpp
juce_gui_extra/native/juce_SystemTrayIcon_windows.cpp
juce_gui_extra/native/juce_UIViewComponent_ios.mm
juce_gui_extra/native/juce_WebBrowserComponent_android.cpp
juce_gui_extra/native/juce_WebBrowserComponent_linux.cpp
juce_gui_extra/native/juce_WebBrowserComponent_mac.mm
juce_gui_extra/native/juce_WebBrowserComponent_windows.cpp
juce_gui_extra/native/juce_XEmbedComponent_linux.cpp
)
set(files_juce_midi_ci
juce_midi_ci/ci/juce_CIChannelAddress.h
juce_midi_ci/ci/juce_CIDevice.cpp
juce_midi_ci/ci/juce_CIDevice.h
juce_midi_ci/ci/juce_CIDeviceFeatures.h
juce_midi_ci/ci/juce_CIDeviceListener.h
juce_midi_ci/ci/juce_CIDeviceMessageHandler.h
juce_midi_ci/ci/juce_CIDeviceOptions.h
juce_midi_ci/ci/juce_CIEncoding.h
juce_midi_ci/ci/juce_CIEncodings.cpp
juce_midi_ci/ci/juce_CIEncodings.h
juce_midi_ci/ci/juce_CIFunctionBlock.h
juce_midi_ci/ci/juce_CIMessages.h
juce_midi_ci/ci/juce_CIMuid.h
juce_midi_ci/ci/juce_CIParser.cpp
juce_midi_ci/ci/juce_CIParser.h
juce_midi_ci/ci/juce_CIProfileAtAddress.h
juce_midi_ci/ci/juce_CIProfileDelegate.h
juce_midi_ci/ci/juce_CIProfileHost.cpp
juce_midi_ci/ci/juce_CIProfileHost.h
juce_midi_ci/ci/juce_CIProfileStates.cpp
juce_midi_ci/ci/juce_CIProfileStates.h
juce_midi_ci/ci/juce_CIPropertyDelegate.cpp
juce_midi_ci/ci/juce_CIPropertyDelegate.h
juce_midi_ci/ci/juce_CIPropertyExchangeCache.cpp
juce_midi_ci/ci/juce_CIPropertyExchangeCache.h
juce_midi_ci/ci/juce_CIPropertyExchangeResult.h
juce_midi_ci/ci/juce_CIPropertyHost.cpp
juce_midi_ci/ci/juce_CIPropertyHost.h
juce_midi_ci/ci/juce_CIResponderDelegate.h
juce_midi_ci/ci/juce_CIResponderOutput.cpp
juce_midi_ci/ci/juce_CIResponderOutput.h
juce_midi_ci/ci/juce_CISubscription.h
juce_midi_ci/ci/juce_CISupportedAndActive.h
juce_midi_ci/detail/juce_CIMarshalling.h
juce_midi_ci/detail/juce_CIMessageMeta.h
juce_midi_ci/detail/juce_CIMessageTypeUtils.h
juce_midi_ci/detail/juce_CIPropertyDataMessageChunker.cpp
juce_midi_ci/detail/juce_CIPropertyDataMessageChunker.h
juce_midi_ci/detail/juce_CIPropertyHostUtils.h
juce_midi_ci/detail/juce_CIResponder.cpp
juce_midi_ci/detail/juce_CIResponder.h
)
set(files_juce_opengl
juce_opengl/geometry/juce_Draggable3DOrientation.h
juce_opengl/geometry/juce_Matrix3D.h
juce_opengl/geometry/juce_Quaternion.h
juce_opengl/geometry/juce_Vector3D.h
juce_opengl/juce_opengl.cpp
juce_opengl/juce_opengl.h
juce_opengl/juce_opengl.mm
juce_opengl/native/java/app/com/rmsl/juce/JuceOpenGLView.java
juce_opengl/native/juce_OpenGLExtensions.h
juce_opengl/native/juce_OpenGL_android.h
juce_opengl/native/juce_OpenGL_ios.h
juce_opengl/native/juce_OpenGL_linux.h
juce_opengl/native/juce_OpenGL_mac.h
juce_opengl/native/juce_OpenGL_windows.h
juce_opengl/opengl/juce_OpenGLContext.cpp
juce_opengl/opengl/juce_OpenGLContext.h
juce_opengl/opengl/juce_OpenGLFrameBuffer.cpp
juce_opengl/opengl/juce_OpenGLFrameBuffer.h
juce_opengl/opengl/juce_OpenGLGraphicsContext.cpp
juce_opengl/opengl/juce_OpenGLGraphicsContext.h
juce_opengl/opengl/juce_OpenGLHelpers.cpp
juce_opengl/opengl/juce_OpenGLHelpers.h
juce_opengl/opengl/juce_OpenGLImage.cpp
juce_opengl/opengl/juce_OpenGLImage.h
juce_opengl/opengl/juce_OpenGLPixelFormat.cpp
juce_opengl/opengl/juce_OpenGLPixelFormat.h
juce_opengl/opengl/juce_OpenGLRenderer.h
juce_opengl/opengl/juce_OpenGLShaderProgram.cpp
juce_opengl/opengl/juce_OpenGLShaderProgram.h
juce_opengl/opengl/juce_OpenGLTexture.cpp
juce_opengl/opengl/juce_OpenGLTexture.h
juce_opengl/opengl/juce_gl.cpp
juce_opengl/opengl/juce_gl.h
juce_opengl/opengl/juce_gles2.cpp
juce_opengl/opengl/juce_gles2.h
juce_opengl/opengl/juce_khrplatform.h
juce_opengl/opengl/juce_wgl.h
juce_opengl/utils/juce_OpenGLAppComponent.cpp
juce_opengl/utils/juce_OpenGLAppComponent.h
)
set(files_juce_osc
juce_osc/juce_osc.cpp
juce_osc/juce_osc.h
juce_osc/osc/juce_OSCAddress.cpp
juce_osc/osc/juce_OSCAddress.h
juce_osc/osc/juce_OSCArgument.cpp
juce_osc/osc/juce_OSCArgument.h
juce_osc/osc/juce_OSCBundle.cpp
juce_osc/osc/juce_OSCBundle.h
juce_osc/osc/juce_OSCMessage.cpp
juce_osc/osc/juce_OSCMessage.h
juce_osc/osc/juce_OSCReceiver.cpp
juce_osc/osc/juce_OSCReceiver.h
juce_osc/osc/juce_OSCSender.cpp
juce_osc/osc/juce_OSCSender.h
juce_osc/osc/juce_OSCTimeTag.cpp
juce_osc/osc/juce_OSCTimeTag.h
juce_osc/osc/juce_OSCTypes.cpp
juce_osc/osc/juce_OSCTypes.h
)
set(files_juce_product_unlocking
juce_product_unlocking/in_app_purchases/juce_InAppPurchases.cpp
juce_product_unlocking/in_app_purchases/juce_InAppPurchases.h
juce_product_unlocking/juce_product_unlocking.cpp
juce_product_unlocking/juce_product_unlocking.h
juce_product_unlocking/juce_product_unlocking.mm
juce_product_unlocking/marketplace/juce_KeyFileGeneration.h
juce_product_unlocking/marketplace/juce_OnlineUnlockForm.cpp
juce_product_unlocking/marketplace/juce_OnlineUnlockForm.h
juce_product_unlocking/marketplace/juce_OnlineUnlockStatus.cpp
juce_product_unlocking/marketplace/juce_OnlineUnlockStatus.h
juce_product_unlocking/marketplace/juce_TracktionMarketplaceStatus.cpp
juce_product_unlocking/marketplace/juce_TracktionMarketplaceStatus.h
juce_product_unlocking/native/java/app/com/rmsl/juce/JuceBillingClient.java
juce_product_unlocking/native/juce_InAppPurchases_android.cpp
juce_product_unlocking/native/juce_InAppPurchases_ios.cpp
)
set(files_juce_video
juce_video/capture/juce_CameraDevice.cpp
juce_video/capture/juce_CameraDevice.h
juce_video/juce_video.cpp
juce_video/juce_video.h
juce_video/juce_video.mm
juce_video/native/java/app/com/rmsl/juce/CameraCaptureSessionCaptureCallback.java
juce_video/native/java/app/com/rmsl/juce/CameraCaptureSessionStateCallback.java
juce_video/native/java/app/com/rmsl/juce/CameraDeviceStateCallback.java
juce_video/native/java/app/com/rmsl/juce/JuceOrientationEventListener.java
juce_video/native/java/app/com/rmsl/juce/MediaControllerCallback.java
juce_video/native/java/app/com/rmsl/juce/MediaSessionCallback.java
juce_video/native/java/app/com/rmsl/juce/SystemVolumeObserver.java
juce_video/native/juce_CameraDevice_android.h
juce_video/native/juce_CameraDevice_ios.h
juce_video/native/juce_CameraDevice_mac.h
juce_video/native/juce_CameraDevice_windows.h
juce_video/native/juce_ComTypes_windows.h
juce_video/native/juce_Video_android.h
juce_video/native/juce_Video_mac.h
juce_video/native/juce_Video_windows.h
juce_video/playback/juce_VideoComponent.cpp
juce_video/playback/juce_VideoComponent.h
)
set(files_juce_build_tools
juce_build_tools/juce_build_tools.cpp
juce_build_tools/juce_build_tools.h
juce_build_tools/utils/juce_BinaryResourceFile.cpp
juce_build_tools/utils/juce_BinaryResourceFile.h
juce_build_tools/utils/juce_BuildHelperFunctions.cpp
juce_build_tools/utils/juce_BuildHelperFunctions.h
juce_build_tools/utils/juce_CppTokeniserFunctions.cpp
juce_build_tools/utils/juce_Entitlements.cpp
juce_build_tools/utils/juce_Entitlements.h
juce_build_tools/utils/juce_Icons.cpp
juce_build_tools/utils/juce_Icons.h
juce_build_tools/utils/juce_PlistOptions.cpp
juce_build_tools/utils/juce_PlistOptions.h
juce_build_tools/utils/juce_ProjectType.h
juce_build_tools/utils/juce_RelativePath.h
juce_build_tools/utils/juce_ResourceFileHelpers.cpp
juce_build_tools/utils/juce_ResourceFileHelpers.h
juce_build_tools/utils/juce_ResourceRc.cpp
juce_build_tools/utils/juce_ResourceRc.h
juce_build_tools/utils/juce_VersionNumbers.cpp
juce_build_tools/utils/juce_VersionNumbers.h
)

set(JUCE_CMAKE_UTILS_DIR ${CMAKE_CURRENT_LIST_DIR}
    CACHE INTERNAL "The path to the folder holding this file and other resources")

include("${JUCE_CMAKE_UTILS_DIR}/JUCEHelperTargets.cmake")
include("${JUCE_CMAKE_UTILS_DIR}/JUCECheckAtomic.cmake")

# Tries to discover the target platform architecture, which is necessary for
# naming VST3 bundle folders and including bundled libraries from modules
function(_juce_find_target_architecture result)
    set(test_file "${JUCE_CMAKE_UTILS_DIR}/juce_runtime_arch_detection.cpp")
    try_compile(compile_result "${CMAKE_CURRENT_BINARY_DIR}" "${test_file}"
        OUTPUT_VARIABLE compile_output)
    string(REGEX REPLACE ".*JUCE_ARCH ([a-zA-Z0-9_-]*).*" "\\1" match_result "${compile_output}")
    set("${result}" "${match_result}" PARENT_SCOPE)
endfunction()

if((CMAKE_SYSTEM_NAME STREQUAL "Linux") OR (CMAKE_SYSTEM_NAME MATCHES ".*BSD") OR MSYS OR MINGW)
    # If you really need to override the detected arch for some reason,
    # you can configure the build with -DJUCE_TARGET_ARCHITECTURE=<custom arch>
    if(NOT DEFINED JUCE_TARGET_ARCHITECTURE)
        _juce_find_target_architecture(target_arch)
        set(JUCE_TARGET_ARCHITECTURE "${target_arch}"
            CACHE INTERNAL "The target architecture, used to name internal folders in VST3 bundles, and to locate bundled libraries in modules")
    endif()
endif()

# ==================================================================================================

function(_juce_add_interface_library target)
    add_library(${target} INTERFACE)
    target_sources(${target} INTERFACE ${ARGN})
endfunction()

# ==================================================================================================

function(_juce_add_standard_defs juce_target)
    _juce_get_debug_config_genex(debug_config)
    target_compile_definitions(${juce_target} INTERFACE
        JUCE_GLOBAL_MODULE_SETTINGS_INCLUDED=1
        $<IF:${debug_config},DEBUG=1 _DEBUG=1,NDEBUG=1 _NDEBUG=1>
        $<$<PLATFORM_ID:Android>:JUCE_ANDROID=1>)
endfunction()

# ==================================================================================================

macro(_juce_make_absolute path)
    if(NOT IS_ABSOLUTE "${${path}}")
        get_filename_component(${path} "${${path}}" ABSOLUTE BASE_DIR "${CMAKE_CURRENT_LIST_DIR}")
    endif()

    string(REGEX REPLACE "\\\\" "/" ${path} "${${path}}")
endmacro()

macro(_juce_make_absolute_and_check path)
    _juce_make_absolute("${path}")

    if(NOT EXISTS "${${path}}")
        message(FATAL_ERROR "No file at path ${${path}}")
    endif()
endmacro()

# ==================================================================================================

# This creates an imported interface library with a random name, and then adds
# the fields from a JUCE module header to the target as INTERFACE_ properties.
# We can extract properties later using `_juce_get_metadata`.
# This way, the interface library ends up behaving a bit like a dictionary,
# and we don't have to parse the module header from scratch every time we
# want to find a specific key.
function(_juce_extract_metadata_block delim_str file_with_block out_dict)
    string(RANDOM LENGTH 16 random_string)
    set(target_name "${random_string}_dict")
    set(${out_dict} "${target_name}" PARENT_SCOPE)
    add_library(${target_name} INTERFACE IMPORTED)

    if(NOT EXISTS ${file_with_block})
        message(FATAL_ERROR "Unable to find file ${file_with_block}")
    endif()

    file(STRINGS ${file_with_block} module_header_contents)

    set(last_written_key)
    set(append NO)

    foreach(line IN LISTS module_header_contents)
        if(NOT append)
            if(line MATCHES "[\t ]*BEGIN_${delim_str}[\t ]*")
                set(append YES)
            endif()

            continue()
        endif()

        if(append AND (line MATCHES "[\t ]*END_${delim_str}[\t ]*"))
            break()
        endif()

        if(line MATCHES "^[\t ]*([a-zA-Z]+):")
            set(last_written_key "${CMAKE_MATCH_1}")
        endif()

        string(REGEX REPLACE "^[\t ]*${last_written_key}:[\t ]*" "" line "${line}")
        string(REGEX REPLACE "[\t ,]+" ";" line "${line}")

        set_property(TARGET ${target_name} APPEND PROPERTY
            "INTERFACE_JUCE_${last_written_key}" "${line}")
    endforeach()
endfunction()

# Fetches properties attached to a metadata target.
function(_juce_get_metadata target key out_var)
    get_target_property(content "${target}" "INTERFACE_JUCE_${key}")

    if(NOT "${content}" STREQUAL "content-NOTFOUND")
        set(${out_var} "${content}" PARENT_SCOPE)
    endif()
endfunction()

# ==================================================================================================
function(_juce_should_build_module_source filename output_var)
    get_filename_component(trimmed_filename "${filename}" NAME_WE)
    string(TOLOWER "${trimmed_filename}" trimmed_filename_lowercase)

    set(system_name_regex_for_suffix
        "android\;Android"
        "ios\;iOS"
        "linux\;Linux|.*BSD"
        "mac\;Darwin"
        "osx\;Darwin"
        "windows\;Windows")

    set(result TRUE)

    foreach(pair IN LISTS system_name_regex_for_suffix)
        list(GET pair 0 suffix)
        list(GET pair 1 regex)

        if((trimmed_filename_lowercase MATCHES "_${suffix}$") AND NOT (CMAKE_SYSTEM_NAME MATCHES "${regex}"))
            set(result FALSE)
        endif()
    endforeach()

    set("${output_var}" "${result}" PARENT_SCOPE)
endfunction()

function(_juce_module_sources module_path output_path built_sources other_sources)
    get_filename_component(module_parent_path ${module_path} DIRECTORY)
    get_filename_component(module_glob ${module_path} NAME)

    # file(GLOB_RECURSE all_module_files
    #     CONFIGURE_DEPENDS LIST_DIRECTORIES FALSE
    #     RELATIVE "${module_parent_path}"
    #     "${module_path}/*")

    # message(STATUS ${module_glob})
    # foreach(fn ${all_module_files})
    #     message(STATUS ${fn})
    # endforeach()
    set(all_module_files)
    if (${module_glob} STREQUAL "juce_analytics")
        set(all_module_files ${files_juce_analytics})
    elseif (${module_glob} STREQUAL "juce_audio_basics")
        set(all_module_files ${files_juce_audio_basics})
    elseif (${module_glob} STREQUAL "juce_audio_devices")
        set(all_module_files ${files_juce_audio_devices})
    elseif (${module_glob} STREQUAL "juce_audio_formats")
        set(all_module_files ${files_juce_audio_formats})
    elseif (${module_glob} STREQUAL "juce_audio_plugin_client")
        set(all_module_files ${files_juce_audio_plugin_client})
    elseif (${module_glob} STREQUAL "juce_audio_processors")
        set(all_module_files ${files_juce_audio_processors})
    elseif (${module_glob} STREQUAL "juce_audio_utils")
        set(all_module_files ${files_juce_audio_utils})
    elseif (${module_glob} STREQUAL "juce_box2d")
        set(all_module_files ${files_juce_box2d})
    elseif (${module_glob} STREQUAL "juce_core")
        set(all_module_files ${files_juce_core})
    elseif (${module_glob} STREQUAL "juce_cryptography")
        set(all_module_files ${files_juce_cryptography})
    elseif (${module_glob} STREQUAL "juce_data_structures")
        set(all_module_files ${files_juce_data_structures})
    elseif (${module_glob} STREQUAL "juce_dsp")
        set(all_module_files ${files_juce_dsp})
    elseif (${module_glob} STREQUAL "juce_events")
        set(all_module_files ${files_juce_events})
    elseif (${module_glob} STREQUAL "juce_graphics")
        set(all_module_files ${files_juce_graphics})
    elseif (${module_glob} STREQUAL "juce_gui_basics")
        set(all_module_files ${files_juce_gui_basics})
    elseif (${module_glob} STREQUAL "juce_gui_extra")
        set(all_module_files ${files_juce_gui_extra})
    elseif (${module_glob} STREQUAL "juce_midi_ci")
        set(all_module_files ${files_juce_midi_ci})
    elseif (${module_glob} STREQUAL "juce_opengl")
        set(all_module_files ${files_juce_opengl})
    elseif (${module_glob} STREQUAL "juce_osc")
        set(all_module_files ${files_juce_osc})
    elseif (${module_glob} STREQUAL "juce_product_unlocking")
        set(all_module_files ${files_juce_product_unlocking})
    elseif (${module_glob} STREQUAL "juce_video")
        set(all_module_files ${files_juce_video})
    elseif (${module_glob} STREQUAL "juce_build_tools")
        set(all_module_files ${files_juce_build_tools})
    else()
        message(FATAL_ERROR "Module '${module_glob}' not found")
    endif()

    set(base_path "${module_glob}/${module_glob}")

    set(module_cpp ${all_module_files})
    list(FILTER module_cpp INCLUDE REGEX "^${base_path}[^/]*\\.(c|cc|cpp|cxx|s|asm)$")

    if(APPLE)
        set(module_mm ${all_module_files})
        list(FILTER module_mm INCLUDE REGEX "^${base_path}[^/]*\\.mm$")

        if(module_mm)
            set(module_mm_replaced ${module_mm})
            list(TRANSFORM module_mm_replaced REPLACE "\\.mm$" ".cpp")
            list(REMOVE_ITEM module_cpp ${module_mm_replaced})
        endif()

        set(module_apple_files ${all_module_files})
        list(FILTER module_apple_files INCLUDE REGEX "${base_path}[^/]*\\.(m|mm|metal|r|swift)$")
        list(APPEND module_cpp ${module_apple_files})
    endif()

    set(headers ${all_module_files})

    set(module_files_to_build)

    foreach(filename IN LISTS module_cpp)
        _juce_should_build_module_source("${filename}" should_build_file)

        if(should_build_file)
            list(APPEND module_files_to_build "${filename}")
        endif()
    endforeach()

    if(NOT "${module_files_to_build}" STREQUAL "")
        list(REMOVE_ITEM headers ${module_files_to_build})
    endif()

    foreach(source_list IN ITEMS module_files_to_build headers)
        list(TRANSFORM ${source_list} PREPEND "${output_path}/")
    endforeach()

    set(${built_sources} ${module_files_to_build} PARENT_SCOPE)
    set(${other_sources} ${headers} PARENT_SCOPE)
endfunction()

# ==================================================================================================

function(_juce_get_all_plugin_kinds out)
    set(${out} AU AUv3 AAX LV2 Standalone Unity VST VST3 PARENT_SCOPE)
endfunction()

function(_juce_get_platform_plugin_kinds out)
    set(result Standalone)

    if(APPLE AND (CMAKE_GENERATOR STREQUAL "Xcode"))
        list(APPEND result AUv3)
    endif()

    if(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
        list(APPEND result AU)
    endif()

    if(NOT CMAKE_SYSTEM_NAME STREQUAL "iOS" AND NOT CMAKE_SYSTEM_NAME STREQUAL "Android")
        list(APPEND result VST LV2)
        if(NOT (CMAKE_SYSTEM_NAME MATCHES ".*BSD"))
            list(APPEND result Unity VST3)
        endif()
    endif()

    if((CMAKE_SYSTEM_NAME STREQUAL "Darwin" OR CMAKE_SYSTEM_NAME STREQUAL "Windows") AND NOT (CMAKE_CXX_COMPILER_ID STREQUAL "GNU"))
        list(APPEND result AAX)
    endif()

    set(${out} ${result} PARENT_SCOPE)
endfunction()

function(_juce_add_plugin_definitions target visibility)
    _juce_get_all_plugin_kinds(options)
    cmake_parse_arguments(JUCE_ARG "${options}" "" "" ${ARGN})

    foreach(opt IN LISTS options)
        set(flag_value 0)

        if(JUCE_ARG_${opt})
            set(flag_value 1)
        endif()

        target_compile_definitions(${target} ${visibility} "JucePlugin_Build_${opt}=${flag_value}")
    endforeach()
endfunction()

# ==================================================================================================

# Takes a target, a link visibility, if it should be a weak link, and a variable-length list of
# framework names. On macOS, for non-weak links, this finds the requested frameworks using
# `find_library`.
function(_juce_link_frameworks target visibility)
    set(options WEAK)
    cmake_parse_arguments(JUCE_LINK_FRAMEWORKS "${options}" "" "" ${ARGN})
    foreach(framework IN LISTS JUCE_LINK_FRAMEWORKS_UNPARSED_ARGUMENTS)
        if(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
            if(JUCE_LINK_FRAMEWORKS_WEAK)
                set(framework_flags "-weak_framework ${framework}")
            else()
                find_library("juce_found_${framework}" "${framework}" REQUIRED)
                set(framework_flags "${juce_found_${framework}}")
            endif()
        elseif(CMAKE_SYSTEM_NAME STREQUAL "iOS")
            # CoreServices is only available on iOS 12+, we must link it weakly on earlier platforms
            if(JUCE_LINK_FRAMEWORKS_WEAK OR ((framework STREQUAL "CoreServices") AND (CMAKE_OSX_DEPLOYMENT_TARGET LESS 12.0)))
                set(framework_flags "-weak_framework ${framework}")
            else()
                set(framework_flags "-framework ${framework}")
            endif()
        endif()
        if(NOT framework_flags STREQUAL "")
            target_link_libraries("${target}" "${visibility}" "${framework_flags}")
        endif()
    endforeach()
endfunction()

# ==================================================================================================

function(_juce_add_plugin_wrapper_target format path out_path)
    _juce_module_sources("${path}" "${out_path}" out_var headers)
    set(target_name juce_audio_plugin_client_${format})

    _juce_add_interface_library("${target_name}" ${out_var})
    _juce_add_plugin_definitions("${target_name}" INTERFACE ${format})
    _juce_add_standard_defs("${target_name}")

    target_compile_features("${target_name}" INTERFACE cxx_std_17)
    add_library("juce::${target_name}" ALIAS "${target_name}")

    if(format STREQUAL "AUv3")
        _juce_link_frameworks("${target_name}" INTERFACE AVFoundation)

        if(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
            _juce_link_frameworks("${target_name}" INTERFACE AudioUnit)
        endif()
    elseif(format STREQUAL "AU")
        target_include_directories("${target_name}" INTERFACE "${out_path}/juce_audio_plugin_client/AU")
        _juce_link_frameworks("${target_name}" INTERFACE AudioUnit CoreAudioKit)
    endif()
endfunction()

# ==================================================================================================

function(_juce_link_libs_from_metadata module_name dict key)
    _juce_get_metadata("${dict}" "${key}" libs)

    if(libs)
        target_link_libraries(${module_name} INTERFACE ${libs})
    endif()
endfunction()

# ==================================================================================================

function(_juce_create_pkgconfig_target name)
    if(TARGET juce::pkgconfig_${name})
        return()
    endif()

    find_package(PkgConfig REQUIRED)
    pkg_check_modules(${name} ${ARGN})

    add_library(pkgconfig_${name} INTERFACE)
    add_library(juce::pkgconfig_${name} ALIAS pkgconfig_${name})
    install(TARGETS pkgconfig_${name} EXPORT JUCE)

    set(pairs
        "INCLUDE_DIRECTORIES\;INCLUDE_DIRS"
        "LINK_LIBRARIES\;LINK_LIBRARIES"
        "LINK_OPTIONS\;LDFLAGS_OTHER"
        "COMPILE_OPTIONS\;CFLAGS_OTHER")

    foreach(pair IN LISTS pairs)
        list(GET pair 0 key)
        list(GET pair 1 value)

        if(${name}_${value})
            set_target_properties(pkgconfig_${name} PROPERTIES INTERFACE_${key} "${${name}_${value}}")
        endif()
    endforeach()
endfunction()

# ==================================================================================================

function(_juce_add_library_path target path)
    if(EXISTS "${path}")
        target_link_directories(${target} INTERFACE ${path})
    endif()
endfunction()

function(_juce_add_module_staticlib_paths module_target module_path)
    if(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
        _juce_add_library_path(${module_target} "${module_path}/libs/MacOSX")
    elseif(CMAKE_SYSTEM_NAME STREQUAL "iOS")
        _juce_add_library_path(${module_target} "${module_path}/libs/iOS")
    elseif((CMAKE_SYSTEM_NAME STREQUAL "Linux") OR (CMAKE_SYSTEM_NAME MATCHES ".*BSD"))
        _juce_add_library_path(${module_target} "${module_path}/libs/Linux/${JUCE_TARGET_ARCHITECTURE}")
    elseif(CMAKE_SYSTEM_NAME STREQUAL "Windows")
        if(CMAKE_GENERATOR MATCHES "Visual Studio [0-9]+ (20[0-9]+)")
            set(arch "$<IF:$<EQUAL:${CMAKE_SIZEOF_VOID_P},8>,x64,Win32>")

            if(NOT CMAKE_GENERATOR_PLATFORM STREQUAL "")
                set(arch ${CMAKE_GENERATOR_PLATFORM})
            endif()

            set(runtime_lib "$<GENEX_EVAL:$<TARGET_PROPERTY:MSVC_RUNTIME_LIBRARY>>")
            set(subfolder "MDd")
            set(subfolder "$<IF:$<STREQUAL:${runtime_lib},MultiThreadedDebug>,MTd,${subfolder}>")
            set(subfolder "$<IF:$<STREQUAL:${runtime_lib},MultiThreadedDLL>,MD,${subfolder}>")
            set(subfolder "$<IF:$<STREQUAL:${runtime_lib},MultiThreaded>,MT,${subfolder}>")
            target_link_directories(${module_target} INTERFACE
                "${module_path}/libs/VisualStudio${CMAKE_MATCH_1}/${arch}/${subfolder}")
        elseif(MSYS OR MINGW)
            _juce_add_library_path(${module_target} "${module_path}/libs/MinGW/${JUCE_TARGET_ARCHITECTURE}")
        endif()
    elseif(CMAKE_SYSTEM_NAME STREQUAL "Android")
        _juce_add_library_path(${module_target} "${module_path}/libs/Android/${CMAKE_ANDROID_ARCH_ABI}")
    endif()
endfunction()

# ==================================================================================================

function(_juce_remove_empty_list_elements arg)
    list(FILTER ${arg} EXCLUDE REGEX "^$")
    set(${arg} ${${arg}} PARENT_SCOPE)
endfunction()

function(juce_add_module module_path)
    set(one_value_args INSTALL_PATH ALIAS_NAMESPACE)
    cmake_parse_arguments(JUCE_ARG "" "${one_value_args}" "" ${ARGN})

    _juce_make_absolute(module_path)

    get_filename_component(module_name ${module_path} NAME)
    get_filename_component(module_parent_path ${module_path} DIRECTORY)

    set(module_header_name "${module_name}.h")

    if(NOT EXISTS "${module_path}/${module_header_name}")
        set(module_header_name "${module_header_name}pp")
    endif()

    if(NOT EXISTS "${module_path}/${module_header_name}")
        message(FATAL_ERROR "Could not locate module header for module '${module_path}'")
    endif()

    set(base_path "${module_parent_path}")

    _juce_module_sources("${module_path}" "${base_path}" globbed_sources headers)

    if(${module_name} STREQUAL "juce_audio_plugin_client")
        list(REMOVE_ITEM headers
            "${module_path}/LV2/juce_LV2ManifestHelper.cpp"
            "${module_path}/VST3/juce_VST3ManifestHelper.mm"
            "${module_path}/VST3/juce_VST3ManifestHelper.cpp")

        _juce_get_platform_plugin_kinds(plugin_kinds)

        foreach(kind IN LISTS plugin_kinds)
            _juce_add_plugin_wrapper_target(${kind} "${module_path}" "${base_path}")
        endforeach()

        # file(GLOB_RECURSE all_module_files
        #     CONFIGURE_DEPENDS LIST_DIRECTORIES FALSE
        #     RELATIVE "${module_parent_path}"
        #     "${module_path}/*")
        set(all_module_files ${files_juce_audio_plugin_client})
    else()
        list(APPEND all_module_sources ${globbed_sources})
    endif()

    _juce_add_interface_library(${module_name} ${all_module_sources})

    set_property(GLOBAL APPEND PROPERTY _juce_module_names ${module_name})

    set_target_properties(${module_name} PROPERTIES
        INTERFACE_JUCE_MODULE_SOURCES   "${globbed_sources}"
        INTERFACE_JUCE_MODULE_HEADERS   "${headers}"
        INTERFACE_JUCE_MODULE_PATH      "${base_path}")

    if(JUCE_ENABLE_MODULE_SOURCE_GROUPS)
        target_sources(${module_name} INTERFACE ${headers})
    endif()

    if(${module_name} STREQUAL "juce_core")
        _juce_add_standard_defs(${module_name})

        target_link_libraries(juce_core INTERFACE juce::juce_atomic_wrapper)

        if(CMAKE_SYSTEM_NAME MATCHES ".*BSD")
            target_link_libraries(juce_core INTERFACE execinfo)
        elseif(CMAKE_SYSTEM_NAME STREQUAL "Android")
            target_sources(juce_core INTERFACE "${ANDROID_NDK}/sources/android/cpufeatures/cpu-features.c")
            target_include_directories(juce_core INTERFACE "${ANDROID_NDK}/sources/android/cpufeatures")
            target_link_libraries(juce_core INTERFACE android log)
        endif()
    endif()

    if(${module_name} STREQUAL "juce_audio_processors")
        add_library(juce_vst3_headers INTERFACE)

        target_compile_definitions(juce_vst3_headers INTERFACE "$<$<TARGET_EXISTS:juce_vst3_sdk>:JUCE_CUSTOM_VST3_SDK=1>")

        target_include_directories(juce_vst3_headers INTERFACE
            "$<$<TARGET_EXISTS:juce_vst3_sdk>:$<TARGET_PROPERTY:juce_vst3_sdk,INTERFACE_INCLUDE_DIRECTORIES>>"
            "$<$<NOT:$<TARGET_EXISTS:juce_vst3_sdk>>:${base_path}/juce_audio_processors/format_types/VST3_SDK>")

        target_link_libraries(juce_audio_processors INTERFACE juce_vst3_headers)

        add_library(juce_lilv_headers INTERFACE)
        set(lv2_base_path "${base_path}/juce_audio_processors/format_types/LV2_SDK")
        target_include_directories(juce_lilv_headers INTERFACE
            "${lv2_base_path}"
            "${lv2_base_path}/lv2"
            "${lv2_base_path}/serd"
            "${lv2_base_path}/sord"
            "${lv2_base_path}/sord/src"
            "${lv2_base_path}/sratom"
            "${lv2_base_path}/lilv"
            "${lv2_base_path}/lilv/src")
        target_link_libraries(juce_audio_processors INTERFACE juce_lilv_headers)

        add_library(juce_ara_headers INTERFACE)

        target_include_directories(juce_ara_headers INTERFACE
            "$<$<TARGET_EXISTS:juce_ara_sdk>:$<TARGET_PROPERTY:juce_ara_sdk,INTERFACE_INCLUDE_DIRECTORIES>>")

        target_link_libraries(juce_audio_processors INTERFACE juce_ara_headers)

        if(JUCE_ARG_ALIAS_NAMESPACE)
            add_library(${JUCE_ARG_ALIAS_NAMESPACE}::juce_vst3_headers ALIAS juce_vst3_headers)
            add_library(${JUCE_ARG_ALIAS_NAMESPACE}::juce_lilv_headers ALIAS juce_lilv_headers)
            add_library(${JUCE_ARG_ALIAS_NAMESPACE}::juce_ara_headers ALIAS juce_ara_headers)
        endif()
    endif()

    target_include_directories(${module_name} INTERFACE ${base_path})

    target_compile_definitions(${module_name} INTERFACE JUCE_MODULE_AVAILABLE_${module_name}=1)

    if((CMAKE_SYSTEM_NAME STREQUAL "Linux") OR (CMAKE_SYSTEM_NAME MATCHES ".*BSD"))
        target_compile_definitions(${module_name} INTERFACE LINUX=1)
    endif()

    if((${module_name} STREQUAL "juce_audio_devices") AND (CMAKE_SYSTEM_NAME STREQUAL "Android"))
        add_subdirectory("${module_path}/native/oboe")
        target_link_libraries(${module_name} INTERFACE oboe)
    endif()

    if((${module_name} STREQUAL "juce_opengl") AND (CMAKE_SYSTEM_NAME STREQUAL "Android"))
        set(platform_supports_gl3 0)

        if(CMAKE_SYSTEM_VERSION VERSION_GREATER_EQUAL 18)
            set(platform_supports_gl3 1)
        endif()

        if(platform_supports_gl3)
            target_compile_definitions(${module_name} INTERFACE JUCE_ANDROID_GL_ES_VERSION_3_0=1)
        endif()

        target_link_libraries(${module_name} INTERFACE EGL $<IF:${platform_supports_gl3},GLESv3,GLESv2>)
    endif()

    _juce_extract_metadata_block(JUCE_MODULE_DECLARATION "${module_path}/${module_header_name}" metadata_dict)

    _juce_get_metadata("${metadata_dict}" minimumCppStandard module_cpp_standard)

    if(module_cpp_standard)
        target_compile_features(${module_name} INTERFACE cxx_std_${module_cpp_standard})
    else()
        target_compile_features(${module_name} INTERFACE cxx_std_11)
    endif()

    if(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
        _juce_get_metadata("${metadata_dict}" OSXFrameworks module_osxframeworks)

        _juce_remove_empty_list_elements(module_osxframeworks)
        foreach(module_framework IN LISTS module_osxframeworks)
            _juce_link_frameworks("${module_name}" INTERFACE "${module_framework}")
        endforeach()

        _juce_get_metadata("${metadata_dict}" WeakOSXFrameworks module_weakosxframeworks)

        _juce_remove_empty_list_elements(module_weakosxframeworks)
        foreach(module_framework IN LISTS module_weakosxframeworks)
            _juce_link_frameworks("${module_name}" INTERFACE WEAK "${module_framework}")
        endforeach()

        _juce_link_libs_from_metadata("${module_name}" "${metadata_dict}" OSXLibs)
    elseif(CMAKE_SYSTEM_NAME STREQUAL "iOS")
        _juce_get_metadata("${metadata_dict}" iOSFrameworks module_iosframeworks)

        _juce_remove_empty_list_elements(module_iosframeworks)
        foreach(module_framework IN LISTS module_iosframeworks)
            _juce_link_frameworks("${module_name}" INTERFACE "${module_framework}")
        endforeach()

        _juce_get_metadata("${metadata_dict}" WeakiOSFrameworks module_weakiosframeworks)

        _juce_remove_empty_list_elements(module_weakiosframeworks)
        foreach(module_framework IN LISTS module_weakiosframeworks)
            _juce_link_frameworks("${module_name}" INTERFACE WEAK "${module_framework}")
        endforeach()

        _juce_link_libs_from_metadata("${module_name}" "${metadata_dict}" iOSLibs)
    elseif((CMAKE_SYSTEM_NAME STREQUAL "Linux") OR (CMAKE_SYSTEM_NAME MATCHES ".*BSD"))
        _juce_get_metadata("${metadata_dict}" linuxPackages module_linuxpackages)

        if(module_linuxpackages)
            _juce_create_pkgconfig_target(${module_name}_LINUX_DEPS ${module_linuxpackages})
            target_link_libraries(${module_name} INTERFACE juce::pkgconfig_${module_name}_LINUX_DEPS)
        endif()

        _juce_link_libs_from_metadata("${module_name}" "${metadata_dict}" linuxLibs)
    elseif(CMAKE_SYSTEM_NAME STREQUAL "Windows")
        if((CMAKE_CXX_COMPILER_ID STREQUAL "MSVC") OR (CMAKE_CXX_COMPILER_FRONTEND_VARIANT STREQUAL "MSVC"))
            if(module_name MATCHES "juce_gui_basics|juce_audio_processors|juce_core")
                target_compile_options(${module_name} INTERFACE /bigobj)
            endif()

            _juce_link_libs_from_metadata("${module_name}" "${metadata_dict}" windowsLibs)
        elseif(MSYS OR MINGW)
            if(module_name STREQUAL "juce_gui_basics")
                target_compile_options(${module_name} INTERFACE "-Wa,-mbig-obj")
            endif()

            _juce_link_libs_from_metadata("${module_name}" "${metadata_dict}" mingwLibs)
        endif()
    endif()

    _juce_get_metadata("${metadata_dict}" dependencies module_dependencies)
    target_link_libraries(${module_name} INTERFACE ${module_dependencies})

    _juce_get_metadata("${metadata_dict}" searchpaths module_searchpaths)

    if(NOT module_searchpaths STREQUAL "")
        foreach(module_searchpath IN LISTS module_searchpaths)
            target_include_directories(${module_name}
                INTERFACE "${module_path}/${module_searchpath}")
        endforeach()
    endif()

    _juce_add_module_staticlib_paths("${module_name}" "${module_path}")

    if(JUCE_ARG_INSTALL_PATH)
        install(DIRECTORY "${module_path}" DESTINATION "${JUCE_ARG_INSTALL_PATH}")
    endif()

    if(JUCE_ARG_ALIAS_NAMESPACE)
        add_library(${JUCE_ARG_ALIAS_NAMESPACE}::${module_name} ALIAS ${module_name})
    endif()
endfunction()

function(juce_add_modules)
    set(one_value_args INSTALL_PATH ALIAS_NAMESPACE)
    cmake_parse_arguments(JUCE_ARG "" "${one_value_args}" "" ${ARGN})

    foreach(path IN LISTS JUCE_ARG_UNPARSED_ARGUMENTS)
        juce_add_module(${path}
            INSTALL_PATH "${JUCE_ARG_INSTALL_PATH}"
            ALIAS_NAMESPACE "${JUCE_ARG_ALIAS_NAMESPACE}")
    endforeach()
endfunction()

# When source groups are enabled, this function sets the HEADER_FILE_ONLY property on any module
# source files that should not be built. This is called automatically by the juce_add_* functions.
function(_juce_fixup_module_source_groups)
    if(JUCE_ENABLE_MODULE_SOURCE_GROUPS)
        get_property(all_modules GLOBAL PROPERTY _juce_module_names)

        foreach(module_name IN LISTS all_modules)
            get_target_property(path ${module_name} INTERFACE_JUCE_MODULE_PATH)
            get_target_property(header_files ${module_name} INTERFACE_JUCE_MODULE_HEADERS)
            get_target_property(source_files ${module_name} INTERFACE_JUCE_MODULE_SOURCES)
            source_group(TREE ${path} PREFIX "JUCE Modules" FILES ${header_files} ${source_files})
            set_source_files_properties(${header_files} PROPERTIES HEADER_FILE_ONLY TRUE)
        endforeach()
    endif()
endfunction()
