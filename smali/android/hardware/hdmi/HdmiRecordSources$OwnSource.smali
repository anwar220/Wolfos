# classes2.dex

.class public final Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OwnSource"
.end annotation


# static fields
.field private static final EXTRA_DATA_SIZE:I


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/hdmi/HdmiRecordSources$OwnSource-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;-><init>()V

    return-void
.end method


# virtual methods
.method extraParamToByteArray([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
