# classes3.dex

.class public final Landroid/permission/AdminPermissionControlParams;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/permission/AdminPermissionControlParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCanAdminGrantSensorsPermissions:Z

.field private final mGrantState:I

.field private final mGranteePackageName:Ljava/lang/String;

.field private final mPermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/permission/AdminPermissionControlParams$1;

    invoke-direct {v0}, Landroid/permission/AdminPermissionControlParams$1;-><init>()V

    sput-object v0, Landroid/permission/AdminPermissionControlParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Package name must not be empty."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "Permission must not be empty."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eq p3, v0, :cond_17

    const/4 v1, 0x2

    if-eq p3, v1, :cond_17

    if-nez p3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_17
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    iput p3, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    iput-boolean p4, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    return-void
.end method


# virtual methods
.method public canAdminGrantSensorsPermissions()Z
    .registers 2

    iget-boolean v0, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getGrantState()I
    .registers 2

    iget v0, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    return v0
.end method

.method public getGranteePackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Grantee %s Permission %s state: %d admin grant of sensors permissions: %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mGranteePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/permission/AdminPermissionControlParams;->mPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/permission/AdminPermissionControlParams;->mGrantState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/permission/AdminPermissionControlParams;->mCanAdminGrantSensorsPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
