# classes2.dex

.class public final Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
.super Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Time"
.end annotation


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;-><init>(II)V

    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;-><init>(II)V

    return-void
.end method
