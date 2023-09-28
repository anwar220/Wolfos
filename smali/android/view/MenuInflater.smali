# classes3.dex

.class public Landroid/view/MenuInflater;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MenuInflater$MenuState;,
        Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "MenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionProviderConstructorArguments(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionViewConstructorArguments(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRealOwner(Landroid/view/MenuInflater;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Landroid/view/MenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetACTION_PROVIDER_CONSTRUCTOR_SIGNATURE()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetACTION_VIEW_CONSTRUCTOR_SIGNATURE()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_15
    return-object p1
.end method

.method private getRealOwner()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/view/MenuInflater$MenuState;

    invoke-direct {v0, p0, p3}, Landroid/view/MenuInflater$MenuState;-><init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_b
    const/4 v4, 0x2

    const-string/jumbo v5, "menu"

    if-ne v1, v4, :cond_39

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_40

    :cond_20
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting menu, got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_b

    :goto_40
    const/4 v4, 0x0

    :goto_41
    if-nez v4, :cond_d9

    const-string/jumbo v6, "item"

    const-string v7, "group"

    packed-switch v1, :pswitch_data_da

    goto/16 :goto_d3

    :pswitch_4d  #0x3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v2, :cond_5d

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_d3

    :cond_5d
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    goto/16 :goto_d3

    :cond_68
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->hasAddedItem()Z

    move-result v6

    if-nez v6, :cond_d3

    invoke-static {v0}, Landroid/view/MenuInflater$MenuState;->-$$Nest$fgetitemActionProvider(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v6

    if-eqz v6, :cond_8c

    invoke-static {v0}, Landroid/view/MenuInflater$MenuState;->-$$Nest$fgetitemActionProvider(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    goto :goto_d3

    :cond_8c
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->addItem()Landroid/view/MenuItem;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V

    goto :goto_d3

    :cond_94
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d3

    const/4 v4, 0x1

    goto :goto_d3

    :pswitch_9c  #0x2
    if-eqz v2, :cond_9f

    goto :goto_d3

    :cond_9f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-virtual {v0, p2}, Landroid/view/MenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_d3

    :cond_ad
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    invoke-virtual {v0, p2}, Landroid/view/MenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_d3

    :cond_b7
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2, v6}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_d3

    :cond_c8
    const/4 v2, 0x1

    move-object v3, v8

    goto :goto_d3

    :pswitch_cb  #0x1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected end of document"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d3
    :goto_d3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_41

    :cond_d9
    return-void

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_cb  #00000001
        :pswitch_9c  #00000002
        :pswitch_4d  #00000003
    .end packed-switch
.end method

.method private registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V
    .registers 3

    return-void
.end method

.method private registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V
    .registers 3

    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .registers 7

    const-string v0, "Error inflating menu XML"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_15} :catch_24
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_1d
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1a
    return-void

    :catchall_1b
    move-exception v0

    goto :goto_2b

    :catch_1d
    move-exception v2

    :try_start_1e
    new-instance v3, Landroid/view/InflateException;

    invoke-direct {v3, v0, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_24
    move-exception v2

    new-instance v3, Landroid/view/InflateException;

    invoke-direct {v3, v0, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_1b

    :goto_2b
    if-eqz v1, :cond_30

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_30
    throw v0
.end method
