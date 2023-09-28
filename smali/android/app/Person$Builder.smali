# classes.dex

.class public Landroid/app/Person$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIsBot:Z

.field private mIsImportant:Z

.field private mKey:Ljava/lang/String;

.field private mName:Ljava/lang/CharSequence;

.field private mUri:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIcon(Landroid/app/Person$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/app/Person$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBot(Landroid/app/Person$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Person$Builder;->mIsBot:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsImportant(Landroid/app/Person$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Person$Builder;->mIsImportant:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKey(Landroid/app/Person$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/Person$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmName(Landroid/app/Person$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUri(Landroid/app/Person$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/Person$Builder;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Person;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/Person;->-$$Nest$fgetmName(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/app/Person;->-$$Nest$fgetmIcon(Landroid/app/Person;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Landroid/app/Person;->-$$Nest$fgetmUri(Landroid/app/Person;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person$Builder;->mUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/Person;->-$$Nest$fgetmKey(Landroid/app/Person;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person$Builder;->mKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/Person;->-$$Nest$fgetmIsBot(Landroid/app/Person;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person$Builder;->mIsBot:Z

    invoke-static {p1}, Landroid/app/Person;->-$$Nest$fgetmIsImportant(Landroid/app/Person;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person$Builder;->mIsImportant:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Person;Landroid/app/Person$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Person$Builder;-><init>(Landroid/app/Person;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Person;
    .registers 3

    new-instance v0, Landroid/app/Person;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Person;-><init>(Landroid/app/Person$Builder;Landroid/app/Person-IA;)V

    return-object v0
.end method

.method public setBot(Z)Landroid/app/Person$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/Person$Builder;->mIsBot:Z

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/Person$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setImportant(Z)Landroid/app/Person$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/Person$Builder;->mIsImportant:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroid/app/Person$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/Person$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Landroid/app/Person$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/Person$Builder;->mUri:Ljava/lang/String;

    return-object p0
.end method
