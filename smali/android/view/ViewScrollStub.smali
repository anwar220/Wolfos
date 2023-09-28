# classes3.dex

.class public interface abstract Landroid/view/ViewScrollStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/view/ViewScrollStub;
    .registers 1

    const-class v0, Landroid/view/ViewScrollStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewScrollStub;

    return-object v0
.end method


# virtual methods
.method public abstract scrollFrictionInit(F)F
.end method
