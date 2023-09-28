# classes.dex

.class public final Landroid/hardware/display/DisplayedContentSample;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    }
.end annotation


# instance fields
.field private mNumFrames:J

.field private mSamplesComponent0:[J

.field private mSamplesComponent1:[J

.field private mSamplesComponent2:[J

.field private mSamplesComponent3:[J


# direct methods
.method public constructor <init>(J[J[J[J[J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/display/DisplayedContentSample;->mNumFrames:J

    iput-object p3, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent0:[J

    iput-object p4, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent1:[J

    iput-object p5, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent2:[J

    iput-object p6, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent3:[J

    return-void
.end method


# virtual methods
.method public getNumFrames()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/display/DisplayedContentSample;->mNumFrames:J

    return-wide v0
.end method

.method public getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J
    .registers 4

    sget-object v0, Landroid/hardware/display/DisplayedContentSample$1;->$SwitchMap$android$hardware$display$DisplayedContentSample$ColorComponent:[I

    invoke-virtual {p1}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_11  #0x4
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent3:[J

    return-object v0

    :pswitch_14  #0x3
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent2:[J

    return-object v0

    :pswitch_17  #0x2
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent1:[J

    return-object v0

    :pswitch_1a  #0x1
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent0:[J

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
    .end packed-switch
.end method
