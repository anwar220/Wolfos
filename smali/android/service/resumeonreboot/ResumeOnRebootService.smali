# classes3.dex

.class public abstract Landroid/service/resumeonreboot/ResumeOnRebootService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final EXCEPTION_KEY:Ljava/lang/String; = "exception_key"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.resumeonreboot.ResumeOnRebootService"

.field public static final UNWRAPPED_BLOB_KEY:Ljava/lang/String; = "unrwapped_blob_key"

.field public static final WRAPPED_BLOB_KEY:Ljava/lang/String; = "wrapped_blob_key"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInterface:Landroid/service/resumeonreboot/IResumeOnRebootService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/service/resumeonreboot/ResumeOnRebootService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/resumeonreboot/ResumeOnRebootService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/resumeonreboot/ResumeOnRebootService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/service/resumeonreboot/ResumeOnRebootService$1;

    invoke-direct {v0, p0}, Landroid/service/resumeonreboot/ResumeOnRebootService$1;-><init>(Landroid/service/resumeonreboot/ResumeOnRebootService;)V

    iput-object v0, p0, Landroid/service/resumeonreboot/ResumeOnRebootService;->mInterface:Landroid/service/resumeonreboot/IResumeOnRebootService;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/service/resumeonreboot/ResumeOnRebootService;->mInterface:Landroid/service/resumeonreboot/IResumeOnRebootService;

    invoke-interface {v0}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onUnwrap([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onWrap([BJ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
