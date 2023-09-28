# classes3.dex

.class public interface abstract Landroid/pc/MiuiPcResourceHelpStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pc/MiuiPcResourceHelpStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Landroid/pc/MiuiPcResourceHelpStub;
    .registers 1

    invoke-static {}, Landroid/pc/MiuiPcResourceHelpStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Landroid/pc/MiuiPcResourceHelpStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getPcDecorCaptionTitleFocused(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method
