# classes.dex

.class public final Landroid/content/rollback/PackageRollbackInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsApex:Z

.field private final mIsApkInApex:Z

.field private final mPendingBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRestores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRollbackDataPolicy:I

.field private final mSnapshottedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

.field private final mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/rollback/PackageRollbackInfo$1;

    invoke-direct {v0}, Landroid/content/rollback/PackageRollbackInfo$1;-><init>()V

    sput-object v0, Landroid/content/rollback/PackageRollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/VersionedPackage;",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/VersionedPackage;",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    iput-object p2, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    iput-object p3, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    iput-object p4, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    iput-boolean p5, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    iput p8, p0, Landroid/content/rollback/PackageRollbackInfo;->mRollbackDataPolicy:I

    iput-boolean p6, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    iput-object p7, p0, Landroid/content/rollback/PackageRollbackInfo;->mSnapshottedUsers:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mSnapshottedUsers:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mRollbackDataPolicy:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/rollback/PackageRollbackInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addPendingBackup(I)V
    .registers 4

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendingBackups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    return-object v0
.end method

.method public getPendingRestores()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .registers 5

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    iget v2, v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->userId:I

    if-ne v2, p1, :cond_17

    return-object v1

    :cond_17
    goto :goto_6

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRollbackDataPolicy()I
    .registers 2

    iget v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mRollbackDataPolicy:I

    return v0
.end method

.method public getSnapshottedUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mSnapshottedUsers:Ljava/util/List;

    return-object v0
.end method

.method public getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;
    .registers 2

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    return-object v0
.end method

.method public getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;
    .registers 2

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    return-object v0
.end method

.method public isApex()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    return v0
.end method

.method public isApkInApex()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    return v0
.end method

.method public removePendingBackup(I)V
    .registers 4

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePendingRestoreInfo(I)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/rollback/PackageRollbackInfo;->removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V

    return-void
.end method

.method public removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/VersionedPackage;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/VersionedPackage;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
