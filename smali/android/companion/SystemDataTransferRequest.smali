# classes.dex

.class public final Landroid/companion/SystemDataTransferRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/SystemDataTransferRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/SystemDataTransferRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssociationId:I

.field private final mPermissionSyncAllPackages:Z

.field private final mPermissionSyncPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/companion/SystemDataTransferRequest$1;

    invoke-direct {v0}, Landroid/companion/SystemDataTransferRequest$1;-><init>()V

    sput-object v0, Landroid/companion/SystemDataTransferRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/SystemDataTransferRequest;->mAssociationId:I

    iput-boolean p2, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncAllPackages:Z

    iput-object p3, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncPackages:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/SystemDataTransferRequest;->mAssociationId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncAllPackages:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncPackages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAssociationId()I
    .registers 2

    iget v0, p0, Landroid/companion/SystemDataTransferRequest;->mAssociationId:I

    return v0
.end method

.method public getPermissionSyncPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncPackages:Ljava/util/List;

    return-object v0
.end method

.method public isPermissionSyncAllPackages()Z
    .registers 2

    iget-boolean v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncAllPackages:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/companion/SystemDataTransferRequest;->mAssociationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncAllPackages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncPackages:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    return-void
.end method
