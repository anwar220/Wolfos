# classes2.dex

.class Landroid/media/ImageReader$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/ImageReader;->postEventFromNative(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ir:Landroid/media/ImageReader;

.field final synthetic val$listener:Landroid/media/ImageReader$OnImageAvailableListener;


# direct methods
.method constructor <init>(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/media/ImageReader;)V
    .registers 3

    iput-object p1, p0, Landroid/media/ImageReader$1;->val$listener:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-object p2, p0, Landroid/media/ImageReader$1;->val$ir:Landroid/media/ImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/media/ImageReader$1;->val$listener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v1, p0, Landroid/media/ImageReader$1;->val$ir:Landroid/media/ImageReader;

    invoke-interface {v0, v1}, Landroid/media/ImageReader$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;)V

    return-void
.end method
