# classes.dex

.class public Landroid/app/people/PeopleSpaceTile$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/PeopleSpaceTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBirthdayText:Ljava/lang/String;

.field private mCanBypassDnd:Z

.field private mContactAffinity:F

.field private mContactUri:Landroid/net/Uri;

.field private mId:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIsImportantConversation:Z

.field private mIsPackageSuspended:Z

.field private mIsUserQuieted:Z

.field private mLastInteractionTimestamp:J

.field private mMessagesCount:I

.field private mNotificationCategory:Ljava/lang/String;

.field private mNotificationContent:Ljava/lang/CharSequence;

.field private mNotificationDataUri:Landroid/net/Uri;

.field private mNotificationKey:Ljava/lang/String;

.field private mNotificationPolicyState:I

.field private mNotificationSender:Ljava/lang/CharSequence;

.field private mNotificationTimestamp:J

.field private mPackageName:Ljava/lang/String;

.field private mStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHandle:Landroid/os/UserHandle;

.field private mUserIcon:Landroid/graphics/drawable/Icon;

.field private mUserName:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBirthdayText(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mBirthdayText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCanBypassDnd(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mCanBypassDnd:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContactAffinity(Landroid/app/people/PeopleSpaceTile$Builder;)F
    .registers 1

    iget p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactAffinity:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContactUri(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntent(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsImportantConversation(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsImportantConversation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPackageSuspended(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsPackageSuspended:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUserQuieted(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsUserQuieted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastInteractionTimestamp(Landroid/app/people/PeopleSpaceTile$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mLastInteractionTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMessagesCount(Landroid/app/people/PeopleSpaceTile$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mMessagesCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationCategory(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationCategory:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationContent(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationDataUri(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationDataUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationKey(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationPolicyState(Landroid/app/people/PeopleSpaceTile$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationSender(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationSender:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationTimestamp(Landroid/app/people/PeopleSpaceTile$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatuses(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mStatuses:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserHandle(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserIcon(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserName(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/app/people/PeopleSpaceTile;->convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/people/PeopleSpaceTile$Builder;->getContactUri(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getStatuses()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mStatuses:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getLastEventTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mLastInteractionTimestamp:J

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4f

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v2

    if-eqz v2, :cond_4f

    move v2, v3

    goto :goto_50

    :cond_4f
    move v2, v1

    :goto_50
    iput-boolean v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsImportantConversation:Z

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_64

    move v1, v3

    goto :goto_65

    :cond_64
    nop

    :goto_65
    iput-boolean v1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mCanBypassDnd:Z

    iput v3, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/LauncherApps;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/app/people/PeopleSpaceTile;->convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->getContactUri(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/content/Intent;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    iput-object p4, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIntent:Landroid/content/Intent;

    if-nez p4, :cond_f

    const/4 v0, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_13
    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/people/PeopleSpaceTile;
    .registers 3

    new-instance v0, Landroid/app/people/PeopleSpaceTile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/people/PeopleSpaceTile;-><init>(Landroid/app/people/PeopleSpaceTile$Builder;Landroid/app/people/PeopleSpaceTile-IA;)V

    return-object v0
.end method

.method public getContactUri(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;
    .registers 5

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    goto :goto_27

    :cond_10
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1e

    goto :goto_26

    :cond_1e
    invoke-virtual {v0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_26
    return-object v1

    :cond_27
    :goto_27
    return-object v1
.end method

.method public setBirthdayText(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mBirthdayText:Ljava/lang/String;

    return-object p0
.end method

.method public setCanBypassDnd(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mCanBypassDnd:Z

    return-object p0
.end method

.method public setContactAffinity(F)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactAffinity:F

    return-object p0
.end method

.method public setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIsImportantConversation(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsImportantConversation:Z

    return-object p0
.end method

.method public setIsPackageSuspended(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsPackageSuspended:Z

    return-object p0
.end method

.method public setIsUserQuieted(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsUserQuieted:Z

    return-object p0
.end method

.method public setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mLastInteractionTimestamp:J

    return-object p0
.end method

.method public setMessagesCount(I)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mMessagesCount:I

    return-object p0
.end method

.method public setNotificationCategory(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationDataUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationPolicyState(I)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return-object p0
.end method

.method public setNotificationSender(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationSender:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNotificationTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationTimestamp:J

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setStatuses(Ljava/util/List;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;)",
            "Landroid/app/people/PeopleSpaceTile$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mStatuses:Ljava/util/List;

    return-object p0
.end method

.method public setUserHandle(Landroid/os/UserHandle;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public setUserIcon(Landroid/graphics/drawable/Icon;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setUserName(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    return-object p0
.end method
