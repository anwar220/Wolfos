# classes.dex

.class Landroid/app/ActivityOptions$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions$6;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityOptions$6;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions$6;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityOptions$6$1;->this$1:Landroid/app/ActivityOptions$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityOptions$6$1;->this$1:Landroid/app/ActivityOptions$6;

    iget-object v0, v0, Landroid/app/ActivityOptions$6;->val$reenterFinishCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
