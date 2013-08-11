module UnrealScript.Engine.ForceFeedbackWaveform;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ForceFeedbackWaveform : UObject
{
	enum EWaveformFunction : ubyte
	{
		WF_Constant = 0,
		WF_LinearIncreasing = 1,
		WF_LinearDecreasing = 2,
		WF_Sin0to90 = 3,
		WF_Sin90to180 = 4,
		WF_Sin0to180 = 5,
		WF_Noise = 6,
		WF_MAX = 7,
	}
	struct WaveformSample
	{
		public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Duration[4];
		public @property final auto ref ForceFeedbackWaveform.EWaveformFunction RightFunction() { return *cast(ForceFeedbackWaveform.EWaveformFunction*)(cast(size_t)&this + 3); }
		private ubyte __RightFunction[1];
		public @property final auto ref ForceFeedbackWaveform.EWaveformFunction LeftFunction() { return *cast(ForceFeedbackWaveform.EWaveformFunction*)(cast(size_t)&this + 2); }
		private ubyte __LeftFunction[1];
		public @property final auto ref ubyte RightAmplitude() { return *cast(ubyte*)(cast(size_t)&this + 1); }
		private ubyte __RightAmplitude[1];
		public @property final auto ref ubyte LeftAmplitude() { return *cast(ubyte*)(cast(size_t)&this + 0); }
		private ubyte __LeftAmplitude[1];
	}
	public @property final auto ref ScriptArray!(ForceFeedbackWaveform.WaveformSample) Samples() { return *cast(ScriptArray!(ForceFeedbackWaveform.WaveformSample)*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref float MaxWaveformDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float WaveformFalloffStartDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bIsLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bIsLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
}