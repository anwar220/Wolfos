# classes.dex

.class public final synthetic Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/app/HomeVisibilityListener$1;


# direct methods
.method public synthetic constructor <init>(Landroid/app/HomeVisibilityListener$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/HomeVisibilityListener$1;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/HomeVisibilityListener$1;

    invoke-virtual {v0}, Landroid/app/HomeVisibilityListener$1;->lambda$refreshHomeVisibility$1$android-app-HomeVisibilityListener$1()V

    return-void
.end method
