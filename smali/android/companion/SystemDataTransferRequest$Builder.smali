# classes.dex

.class public final Landroid/companion/SystemDataTransferRequest$Builder;
.super Landroid/provider/OneTimeUseBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/SystemDataTransferRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/SystemDataTransferRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAssociationId:I

.field private mPermissionSyncAllPackages:Z

.field private mPermissionSyncPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mPermissionSyncPackages:Ljava/util/List;

    iput p1, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mAssociationId:I

    return-void
.end method


# virtual methods
.method public build()Landroid/companion/SystemDataTransferRequest;
    .registers 5

    new-instance v0, Landroid/companion/SystemDataTransferRequest;

    iget v1, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mAssociationId:I

    iget-boolean v2, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mPermissionSyncAllPackages:Z

    iget-object v3, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mPermissionSyncPackages:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/SystemDataTransferRequest;-><init>(IZLjava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/companion/SystemDataTransferRequest$Builder;->build()Landroid/companion/SystemDataTransferRequest;

    move-result-object v0

    return-object v0
.end method

.method public setPermissionSyncAllPackages()Landroid/companion/SystemDataTransferRequest$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mPermissionSyncAllPackages:Z

    return-object p0
.end method

.method public setPermissionSyncPackages(Ljava/util/List;)Landroid/companion/SystemDataTransferRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/companion/SystemDataTransferRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mPermissionSyncPackages:Ljava/util/List;

    return-object p0
.end method
