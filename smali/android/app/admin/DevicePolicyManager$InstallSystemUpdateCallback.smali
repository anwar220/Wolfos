# classes.dex

.class public abstract Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InstallSystemUpdateCallback"
.end annotation


# static fields
.field public static final UPDATE_ERROR_BATTERY_LOW:I = 0x5

.field public static final UPDATE_ERROR_FILE_NOT_FOUND:I = 0x4

.field public static final UPDATE_ERROR_INCORRECT_OS_VERSION:I = 0x2

.field public static final UPDATE_ERROR_UNKNOWN:I = 0x1

.field public static final UPDATE_ERROR_UPDATE_FILE_INVALID:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallUpdateError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method
