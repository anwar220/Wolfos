# classes.dex

.class Landroid/app/LauncherActivity$ActivityAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field protected mActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field protected final mIconResizer:Landroid/app/LauncherActivity$IconResizer;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowIcons:Z

.field final synthetic this$0:Landroid/app/LauncherActivity;


# direct methods
.method static bridge synthetic -$$Nest$fgetlock(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalValues(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmOriginalValues(Landroid/app/LauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/app/LauncherActivity;Landroid/app/LauncherActivity$IconResizer;)V
    .registers 4

    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/app/LauncherActivity;->onEvaluateShowIcons()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mShowIcons:Z

    invoke-virtual {p1}, Landroid/app/LauncherActivity;->makeListItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/app/LauncherActivity$ListItem;)V
    .registers 7

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mShowIcons:Z

    if-eqz v1, :cond_2a

    iget-object v1, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_24

    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    iget-object v2, p2, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    invoke-virtual {v3}, Landroid/app/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/LauncherActivity$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    :cond_24
    iget-object v1, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_c

    new-instance v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/LauncherActivity$ActivityAdapter;Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter-IA;)V

    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    :cond_c
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    if-nez p2, :cond_d

    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, p2

    :goto_e
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LauncherActivity$ListItem;

    invoke-direct {p0, v0, v1}, Landroid/app/LauncherActivity$ActivityAdapter;->bindView(Landroid/view/View;Landroid/app/LauncherActivity$ListItem;)V

    return-object v0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .registers 6

    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    iget-object v1, v1, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LauncherActivity$ListItem;

    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_27

    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_27
    return-object v0
.end method

.method public itemForPosition(I)Landroid/app/LauncherActivity$ListItem;
    .registers 3

    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LauncherActivity$ListItem;

    return-object v0
.end method
