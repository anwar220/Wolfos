# classes2.dex

.class Landroid/media/tv/BroadcastInfoRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/BroadcastInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/BroadcastInfoRequest;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/BroadcastInfoRequest;
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected broadcast info request type (value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in parcel."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_26  #0x8
    invoke-static {p1}, Landroid/media/tv/TimelineRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineRequest;

    move-result-object v1

    return-object v1

    :pswitch_2b  #0x7
    invoke-static {p1}, Landroid/media/tv/CommandRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/CommandRequest;

    move-result-object v1

    return-object v1

    :pswitch_30  #0x6
    invoke-static {p1}, Landroid/media/tv/DsmccRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/DsmccRequest;

    move-result-object v1

    return-object v1

    :pswitch_35  #0x5
    invoke-static {p1}, Landroid/media/tv/StreamEventRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/StreamEventRequest;

    move-result-object v1

    return-object v1

    :pswitch_3a  #0x4
    invoke-static {p1}, Landroid/media/tv/PesRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/PesRequest;

    move-result-object v1

    return-object v1

    :pswitch_3f  #0x3
    invoke-static {p1}, Landroid/media/tv/SectionRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SectionRequest;

    move-result-object v1

    return-object v1

    :pswitch_44  #0x2
    invoke-static {p1}, Landroid/media/tv/TableRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableRequest;

    move-result-object v1

    return-object v1

    :pswitch_49  #0x1
    invoke-static {p1}, Landroid/media/tv/TsRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TsRequest;

    move-result-object v1

    return-object v1

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_49  #00000001
        :pswitch_44  #00000002
        :pswitch_3f  #00000003
        :pswitch_3a  #00000004
        :pswitch_35  #00000005
        :pswitch_30  #00000006
        :pswitch_2b  #00000007
        :pswitch_26  #00000008
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/BroadcastInfoRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/BroadcastInfoRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/tv/BroadcastInfoRequest;
    .registers 3

    new-array v0, p1, [Landroid/media/tv/BroadcastInfoRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/BroadcastInfoRequest$1;->newArray(I)[Landroid/media/tv/BroadcastInfoRequest;

    move-result-object p1

    return-object p1
.end method