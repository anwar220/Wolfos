# classes2.dex

.class public Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$VcmMode;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Standard;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Pilot;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Rolloff;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Modulation;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$ScanType;
    }
.end annotation


# static fields
.field public static final MODULATION_AUTO:I = 0x1

.field public static final MODULATION_MOD_128APSK:I = 0x800

.field public static final MODULATION_MOD_16APSK:I = 0x100

.field public static final MODULATION_MOD_16PSK:I = 0x10

.field public static final MODULATION_MOD_16QAM:I = 0x8

.field public static final MODULATION_MOD_256APSK:I = 0x1000

.field public static final MODULATION_MOD_32APSK:I = 0x200

.field public static final MODULATION_MOD_32PSK:I = 0x20

.field public static final MODULATION_MOD_64APSK:I = 0x400

.field public static final MODULATION_MOD_8APSK:I = 0x80

.field public static final MODULATION_MOD_8PSK:I = 0x4

.field public static final MODULATION_MOD_ACM:I = 0x40

.field public static final MODULATION_MOD_QPSK:I = 0x2

.field public static final MODULATION_MOD_RESERVED:I = 0x2000

.field public static final MODULATION_UNDEFINED:I = 0x0

.field public static final PILOT_AUTO:I = 0x3

.field public static final PILOT_OFF:I = 0x2

.field public static final PILOT_ON:I = 0x1

.field public static final PILOT_UNDEFINED:I = 0x0

.field public static final ROLLOFF_0_10:I = 0x5

.field public static final ROLLOFF_0_15:I = 0x4

.field public static final ROLLOFF_0_20:I = 0x3

.field public static final ROLLOFF_0_25:I = 0x2

.field public static final ROLLOFF_0_35:I = 0x1

.field public static final ROLLOFF_0_5:I = 0x6

.field public static final ROLLOFF_UNDEFINED:I = 0x0

.field public static final SCAN_TYPE_DIRECT:I = 0x1

.field public static final SCAN_TYPE_DISEQC:I = 0x2

.field public static final SCAN_TYPE_JESS:I = 0x4

.field public static final SCAN_TYPE_UNDEFINED:I = 0x0

.field public static final SCAN_TYPE_UNICABLE:I = 0x3

.field public static final STANDARD_AUTO:I = 0x1

.field public static final STANDARD_S:I = 0x2

.field public static final STANDARD_S2:I = 0x4

.field public static final STANDARD_S2X:I = 0x8

.field public static final VCM_MODE_AUTO:I = 0x1

.field public static final VCM_MODE_MANUAL:I = 0x2

.field public static final VCM_MODE_UNDEFINED:I


# instance fields
.field private final mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

.field private final mInputStreamId:I

.field private final mIsDiseqcRxMessage:Z

.field private final mModulation:I

.field private final mPilot:I

.field private final mRolloff:I

.field private final mScanType:I

.field private final mStandard:I

.field private final mSymbolRate:I

.field private final mVcmMode:I


# direct methods
.method private constructor <init>(JILandroid/media/tv/tuner/frontend/DvbsCodeRate;IIIIIIIZ)V
    .registers 13

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    iput p3, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mModulation:I

    iput-object p4, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    iput p5, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mSymbolRate:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mRolloff:I

    iput p7, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mPilot:I

    iput p8, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mInputStreamId:I

    iput p9, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mStandard:I

    iput p10, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mVcmMode:I

    iput p11, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mScanType:I

    iput-boolean p12, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mIsDiseqcRxMessage:Z

    return-void
.end method

.method synthetic constructor <init>(JILandroid/media/tv/tuner/frontend/DvbsCodeRate;IIIIIIIZLandroid/media/tv/tuner/frontend/DvbsFrontendSettings-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;-><init>(JILandroid/media/tv/tuner/frontend/DvbsCodeRate;IIIIIIIZ)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public canHandleDiseqcRxMessage()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mIsDiseqcRxMessage:Z

    return v0
.end method

.method public getCodeRate()Landroid/media/tv/tuner/frontend/DvbsCodeRate;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    return-object v0
.end method

.method public getInputStreamId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mInputStreamId:I

    return v0
.end method

.method public getModulation()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mModulation:I

    return v0
.end method

.method public getPilot()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mPilot:I

    return v0
.end method

.method public getRolloff()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mRolloff:I

    return v0
.end method

.method public getScanType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mScanType:I

    return v0
.end method

.method public getStandard()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mStandard:I

    return v0
.end method

.method public getSymbolRate()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mSymbolRate:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getVcmMode()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mVcmMode:I

    return v0
.end method
