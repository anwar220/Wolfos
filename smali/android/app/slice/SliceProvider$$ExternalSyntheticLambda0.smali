# classes.dex

.class public final synthetic Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/slice/SliceProvider;


# direct methods
.method public synthetic constructor <init>(Landroid/app/slice/SliceProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;->f$0:Landroid/app/slice/SliceProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;->f$0:Landroid/app/slice/SliceProvider;

    invoke-virtual {v0}, Landroid/app/slice/SliceProvider;->lambda$new$0$android-app-slice-SliceProvider()V

    return-void
.end method
