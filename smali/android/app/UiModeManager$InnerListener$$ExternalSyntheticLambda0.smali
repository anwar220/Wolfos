# classes.dex

.class public final synthetic Landroid/app/UiModeManager$InnerListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/util/ArraySet;

    invoke-interface {p1, p2, p3}, Landroid/app/UiModeManager$OnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/Set;)V

    return-void
.end method
