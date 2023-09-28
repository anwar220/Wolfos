# classes4.dex

.class public final synthetic Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;->lambda$onAnimationEnd$0$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup$13()V

    return-void
.end method
