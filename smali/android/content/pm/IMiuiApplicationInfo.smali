# classes.dex

.class public interface abstract Landroid/content/pm/IMiuiApplicationInfo;
.super Ljava/lang/Object;


# static fields
.field public static final FLAG_ALWAYS_SCREEN_COMPAT:I = 0x2

.field public static final FLAG_NEEDS_SCREEN_COMPAT:I = 0x1

.field public static final FLAG_SCREEN_COMPAT_WITHOUT_INSET:I = 0x4


# virtual methods
.method public abstract getMiuiFlags()I
.end method

.method public abstract getMiuiScreenCompatInfo()Landroid/os/Bundle;
.end method

.method public abstract setMiuiFlags(I)V
.end method

.method public abstract setMiuiScreenCompatInfo(Landroid/os/Bundle;)V
.end method
