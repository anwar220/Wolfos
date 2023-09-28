# classes.dex

.class public final Landroid/app/search/SearchTarget$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mExtras:Landroid/os/Bundle;

.field private mHidden:Z

.field private mId:Ljava/lang/String;

.field private mLayoutType:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mParentId:Ljava/lang/String;

.field private mResultType:I

.field private mScore:F

.field private mSearchAction:Landroid/app/search/SearchAction;

.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private mSliceUri:Landroid/net/Uri;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/app/search/SearchTarget$Builder;->mId:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mLayoutType:Ljava/lang/String;

    iput p1, p0, Landroid/app/search/SearchTarget$Builder;->mResultType:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/search/SearchTarget;
    .registers 18

    move-object/from16 v0, p0

    new-instance v16, Landroid/app/search/SearchTarget;

    iget v2, v0, Landroid/app/search/SearchTarget$Builder;->mResultType:I

    iget-object v3, v0, Landroid/app/search/SearchTarget$Builder;->mLayoutType:Ljava/lang/String;

    iget-object v4, v0, Landroid/app/search/SearchTarget$Builder;->mId:Ljava/lang/String;

    iget-object v5, v0, Landroid/app/search/SearchTarget$Builder;->mParentId:Ljava/lang/String;

    iget v6, v0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    iget-boolean v7, v0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    iget-object v8, v0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/app/search/SearchTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    iget-object v10, v0, Landroid/app/search/SearchTarget$Builder;->mSearchAction:Landroid/app/search/SearchAction;

    iget-object v11, v0, Landroid/app/search/SearchTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v12, v0, Landroid/app/search/SearchTarget$Builder;->mSliceUri:Landroid/net/Uri;

    iget-object v13, v0, Landroid/app/search/SearchTarget$Builder;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v14, v0, Landroid/app/search/SearchTarget$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Landroid/app/search/SearchTarget;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Landroid/os/UserHandle;Landroid/app/search/SearchAction;Landroid/content/pm/ShortcutInfo;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/app/search/SearchTarget-IA;)V

    return-object v16
.end method

.method public setAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/app/search/SearchTarget$Builder;
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SearchTarget packageName is different from appWidgetProviderInfo\'s packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setHidden(Z)Landroid/app/search/SearchTarget$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setParentId(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mParentId:Ljava/lang/String;

    return-object p0
.end method

.method public setScore(F)Landroid/app/search/SearchTarget$Builder;
    .registers 2

    iput p1, p0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    return-object p0
.end method

.method public setSearchAction(Landroid/app/search/SearchAction;)Landroid/app/search/SearchTarget$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mSearchAction:Landroid/app/search/SearchAction;

    return-object p0
.end method

.method public setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/app/search/SearchTarget$Builder;
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1f

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SearchTarget packageName is different from shortcut\'s packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setShouldHide(Z)Landroid/app/search/SearchTarget$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    return-object p0
.end method

.method public setSliceUri(Landroid/net/Uri;)Landroid/app/search/SearchTarget$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mSliceUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method
