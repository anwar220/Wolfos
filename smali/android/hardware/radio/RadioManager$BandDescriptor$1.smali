# classes2.dex

.class Landroid/hardware/radio/RadioManager$BandDescriptor$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$BandDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/RadioManager$BandDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 6

    invoke-static {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->-$$Nest$smlookupTypeFromParcel(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported band: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_21  #0x1, 0x2
    new-instance v2, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    invoke-direct {v2, p1, v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$FmBandDescriptor-IA;)V

    return-object v2

    :pswitch_27  #0x0, 0x3
    new-instance v2, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    invoke-direct {v2, p1, v1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$AmBandDescriptor-IA;)V

    return-object v2

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_21  #00000001
        :pswitch_21  #00000002
        :pswitch_27  #00000003
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 3

    new-array v0, p1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;->newArray(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object p1

    return-object p1
.end method
