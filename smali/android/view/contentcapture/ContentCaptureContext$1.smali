# classes2.dex

.class Landroid/view/contentcapture/ContentCaptureContext$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/contentcapture/ContentCaptureContext;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureContext;
    .registers 16

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    move v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    const-class v2, Landroid/content/LocusId;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/LocusId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    invoke-direct {v4, v2}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    if-eqz v3, :cond_23

    invoke-virtual {v4, v3}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/contentcapture/ContentCaptureContext$Builder;

    :cond_23
    new-instance v5, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-direct {v5, v4, v1}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;Landroid/view/contentcapture/ContentCaptureContext-IA;)V

    move-object v2, v5

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    const-class v3, Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-nez v1, :cond_36

    return-object v2

    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    new-instance v5, Landroid/app/assist/ActivityId;

    invoke-direct {v5, p1}, Landroid/app/assist/ActivityId;-><init>(Landroid/os/Parcel;)V

    new-instance v13, Landroid/view/contentcapture/ContentCaptureContext;

    move-object v3, v13

    move-object v4, v2

    move-object v6, v1

    move v7, v10

    move-object v8, v11

    move v9, v12

    invoke-direct/range {v3 .. v9}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/app/assist/ActivityId;Landroid/content/ComponentName;ILandroid/os/IBinder;I)V

    return-object v13
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/contentcapture/ContentCaptureContext;
    .registers 3

    new-array v0, p1, [Landroid/view/contentcapture/ContentCaptureContext;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext$1;->newArray(I)[Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object p1

    return-object p1
.end method
