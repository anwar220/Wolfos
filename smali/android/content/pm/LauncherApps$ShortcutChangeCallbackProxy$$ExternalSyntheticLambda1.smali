# classes.dex

.class public final synthetic Landroid/content/pm/LauncherApps$ShortcutChangeCallbackProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/util/List;

    check-cast p4, Landroid/os/UserHandle;

    invoke-interface {p1, p2, p3, p4}, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
