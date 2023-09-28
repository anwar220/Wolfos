# classes.dex

.class interface abstract Landroid/content/res/IMiuiThemeHelper;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createPathForMiui(Landroid/content/res/Resources;)Landroid/graphics/Path;
.end method

.method public abstract drawMiuiStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
.end method

.method public abstract getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUid()I
.end method

.method public abstract handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
.end method

.method public abstract initActivityManagerServiceInjector(Landroid/content/Context;)V
.end method

.method public abstract needNewResources(I)Z
.end method
