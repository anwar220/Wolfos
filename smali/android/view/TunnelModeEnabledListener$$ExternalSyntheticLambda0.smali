# classes3.dex

.class public final synthetic Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/TunnelModeEnabledListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/TunnelModeEnabledListener;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;->f$0:Landroid/view/TunnelModeEnabledListener;

    iput-boolean p2, p0, Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;->f$0:Landroid/view/TunnelModeEnabledListener;

    iget-boolean v1, p0, Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/TunnelModeEnabledListener;->lambda$dispatchOnTunnelModeEnabledChanged$0(Landroid/view/TunnelModeEnabledListener;Z)V

    return-void
.end method
