# classes.dex

.class public final synthetic Landroid/app/ActivityThread$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/app/ActivityThread;->lambda$initializeMainlineModules$3(Landroid/content/Context;)V

    return-void
.end method
