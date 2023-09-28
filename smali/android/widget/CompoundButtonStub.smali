# classes4.dex

.class public interface abstract Landroid/widget/CompoundButtonStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/widget/CompoundButtonStub;
    .registers 1

    const-class v0, Landroid/widget/CompoundButtonStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButtonStub;

    return-object v0
.end method


# virtual methods
.method public abstract performClickHaptic(Landroid/view/View;)V
.end method
