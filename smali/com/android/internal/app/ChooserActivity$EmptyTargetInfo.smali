# classes4.dex

.class public final Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;
.super Lcom/android/internal/app/chooser/NotSelectableTargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "EmptyTargetInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
