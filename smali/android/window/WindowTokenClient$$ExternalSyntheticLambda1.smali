# classes4.dex

.class public final synthetic Landroid/window/WindowTokenClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Landroid/window/WindowTokenClient;


# direct methods
.method public synthetic constructor <init>(Landroid/window/WindowTokenClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda1;->f$0:Landroid/window/WindowTokenClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda1;->f$0:Landroid/window/WindowTokenClient;

    check-cast p1, Landroid/content/res/Configuration;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    return-void
.end method
