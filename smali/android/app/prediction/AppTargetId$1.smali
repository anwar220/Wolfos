# classes.dex

.class Landroid/app/prediction/AppTargetId$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/AppTargetId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/prediction/AppTargetId;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/prediction/AppTargetId;
    .registers 4

    new-instance v0, Landroid/app/prediction/AppTargetId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/prediction/AppTargetId;-><init>(Landroid/os/Parcel;Landroid/app/prediction/AppTargetId-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/prediction/AppTargetId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/prediction/AppTargetId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/prediction/AppTargetId;
    .registers 3

    new-array v0, p1, [Landroid/app/prediction/AppTargetId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/prediction/AppTargetId$1;->newArray(I)[Landroid/app/prediction/AppTargetId;

    move-result-object p1

    return-object p1
.end method
