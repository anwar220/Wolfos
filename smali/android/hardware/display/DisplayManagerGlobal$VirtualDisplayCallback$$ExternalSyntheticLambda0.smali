# classes.dex

.class public final synthetic Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/display/VirtualDisplay$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/display/VirtualDisplay$Callback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/display/VirtualDisplay$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onStopped()V

    return-void
.end method
