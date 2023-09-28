# classes4.dex

.class public Lcom/android/internal/widget/CallLayout;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

.field private mConversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private mConversationText:Landroid/widget/TextView;

.field private mIcon:Lcom/android/internal/widget/CachingIconView;

.field private mLargeIcon:Landroid/graphics/drawable/Icon;

.field private mLayoutColor:I

.field private final mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private mUser:Landroid/app/Person;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method private setUser(Landroid/app/Person;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    return-void
.end method

.method private updateCallLayout()V
    .registers 6

    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v3}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1b
    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    :cond_1f
    if-nez v2, :cond_29

    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v4, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    :cond_29
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFinishInflate$0$com-android-internal-widget-CallLayout(Ljava/lang/Boolean;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/CallLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    const v0, 0x1020284

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationText:Landroid/widget/TextView;

    const v0, 0x102027e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    const v0, 0x1020280

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v1, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CallLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string v0, "android.callPerson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/CallLayout;->setUser(Landroid/app/Person;)V

    invoke-direct {p0}, Lcom/android/internal/widget/CallLayout;->updateCallLayout()V

    return-void
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public setLayoutColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    return-void
.end method

.method public setNotificationBackgroundColor(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
