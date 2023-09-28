# classes.dex

.class public Landroid/app/admin/ProvisioningException;
.super Landroid/util/AndroidException;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ProvisioningException$ProvisioningError;
    }
.end annotation


# static fields
.field public static final ERROR_ADMIN_PACKAGE_INSTALLATION_FAILED:I = 0x3

.field public static final ERROR_PRE_CONDITION_FAILED:I = 0x1

.field public static final ERROR_PROFILE_CREATION_FAILED:I = 0x2

.field public static final ERROR_REMOVE_NON_REQUIRED_APPS_FAILED:I = 0x6

.field public static final ERROR_SETTING_PROFILE_OWNER_FAILED:I = 0x4

.field public static final ERROR_SET_DEVICE_OWNER_FAILED:I = 0x7

.field public static final ERROR_STARTING_PROFILE_FAILED:I = 0x5

.field public static final ERROR_UNKNOWN:I


# instance fields
.field private final mProvisioningError:I


# direct methods
.method public constructor <init>(Ljava/lang/Exception;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/admin/ProvisioningException;-><init>(Ljava/lang/Exception;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p2, p0, Landroid/app/admin/ProvisioningException;->mProvisioningError:I

    return-void
.end method


# virtual methods
.method public getProvisioningError()I
    .registers 2

    iget v0, p0, Landroid/app/admin/ProvisioningException;->mProvisioningError:I

    return v0
.end method
