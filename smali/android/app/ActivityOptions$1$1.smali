# classes.dex

.class Landroid/app/ActivityOptions$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions$1;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityOptions$1;

.field final synthetic val$elapsedRealtime:J


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions$1;J)V
    .registers 4

    iput-object p1, p0, Landroid/app/ActivityOptions$1$1;->this$1:Landroid/app/ActivityOptions$1;

    iput-wide p2, p0, Landroid/app/ActivityOptions$1$1;->val$elapsedRealtime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/app/ActivityOptions$1$1;->this$1:Landroid/app/ActivityOptions$1;

    iget-object v0, v0, Landroid/app/ActivityOptions$1;->val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    iget-wide v1, p0, Landroid/app/ActivityOptions$1$1;->val$elapsedRealtime:J

    invoke-interface {v0, v1, v2}, Landroid/app/ActivityOptions$OnAnimationStartedListener;->onAnimationStarted(J)V

    return-void
.end method
