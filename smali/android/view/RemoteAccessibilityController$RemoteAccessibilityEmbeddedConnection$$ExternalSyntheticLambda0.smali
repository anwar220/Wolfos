# classes3.dex

.class public final synthetic Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;


# direct methods
.method public synthetic constructor <init>(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;->f$0:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;->f$0:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->lambda$binderDied$0$android-view-RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection()V

    return-void
.end method
