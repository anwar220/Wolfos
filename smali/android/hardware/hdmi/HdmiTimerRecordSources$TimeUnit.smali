# classes2.dex

.class Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeUnit"
.end annotation


# instance fields
.field final mHour:I

.field final mMinute:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    return-void
.end method

.method static toBcdByte(I)B
    .registers 4

    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 v0, v0, 0xa

    rem-int/lit8 v1, p0, 0xa

    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    int-to-byte v2, v2

    return v2
.end method


# virtual methods
.method toByteArray([BI)I
    .registers 5

    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    invoke-static {v0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->toBcdByte(I)B

    move-result v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->toBcdByte(I)B

    move-result v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method