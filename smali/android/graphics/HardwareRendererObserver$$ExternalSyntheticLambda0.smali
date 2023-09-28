# classes.dex

.class public final synthetic Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/HardwareRendererObserver;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/HardwareRendererObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/HardwareRendererObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0}, Landroid/graphics/HardwareRendererObserver;->lambda$notifyDataAvailable$0$android-graphics-HardwareRendererObserver()V

    return-void
.end method
