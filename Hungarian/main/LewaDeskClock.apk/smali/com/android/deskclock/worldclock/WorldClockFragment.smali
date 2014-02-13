.class public Lcom/android/deskclock/worldclock/WorldClockFragment;
.super Landroid/app/Fragment;
.source "WorldClockFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/worldclock/WorldClockFragment$DeleteCity;,
        Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;
    }
.end annotation


# static fields
.field private static final ADDACTIVITYREQUESTCODE:I = 0x1

.field private static final ADDCITY:I = 0x65

.field private static final SET:I = 0x66

.field public static final UPDATE_WORLDCLOCK_LISTVIEW:Ljava/lang/String; = "update_worldclock_listview"


# instance fields
.field private context:Landroid/content/Context;

.field private digitalClock:Lcom/android/deskclock/DigitalClock;

.field private isDeleting:Z

.field private listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdaptor;

.field private mCallback:Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;

.field private mDefaultHeightSplitActionBar:I

.field private mEmptLayout:Landroid/widget/LinearLayout;

.field private mFootView:Landroid/view/View;

.field private mHeightSplitActionBar:I

.field private mListView:Landroid/widget/ListView;

.field private mSelectIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field mWeatherIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mcontext:Landroid/app/Activity;

.field private mstrFormat:Ljava/lang/String;

.field private myAnalogClock:Lcom/android/deskclock/LewaAnalogClock;

.field private new_am_pm:Landroid/widget/TextView;

.field private updateListView:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSelectIds:Ljava/util/Set;

    .line 65
    iput-boolean v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->isDeleting:Z

    .line 66
    iput v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    .line 67
    iput v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mDefaultHeightSplitActionBar:I

    .line 75
    new-instance v0, Lcom/android/deskclock/worldclock/WorldClockFragment$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/worldclock/WorldClockFragment$1;-><init>(Lcom/android/deskclock/worldclock/WorldClockFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 432
    new-instance v0, Lcom/android/deskclock/worldclock/WorldClockFragment$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/worldclock/WorldClockFragment$2;-><init>(Lcom/android/deskclock/worldclock/WorldClockFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->updateListView:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/worldclock/WorldClockFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/WorldClockFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->refreshListView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/worldclock/WorldClockFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/WorldClockFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/worldclock/WorldClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdaptor;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/WorldClockFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdaptor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/worldclock/WorldClockFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/WorldClockFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSelectIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/worldclock/WorldClockFragment;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/WorldClockFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/deskclock/worldclock/WorldClockFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/WorldClockFragment;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/deskclock/worldclock/WorldClockFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/WorldClockFragment;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->isDeleting:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/deskclock/worldclock/WorldClockFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/WorldClockFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->isDeleting:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/deskclock/worldclock/WorldClockFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/WorldClockFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mstrFormat:Ljava/lang/String;

    return-object v0
.end method

.method private addFooterViewForSplitBar()V
    .locals 4

    .prologue
    .line 206
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mFootView:Landroid/view/View;

    .line 212
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 214
    return-void
.end method

.method private getSystemLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 267
    .local v0, "l":Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initWeatherIds()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v5, "weatherIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "isFirstBoot"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 234
    .local v3, "isFirstBoot":Z
    if-eqz v3, :cond_1

    .line 236
    const/high16 v6, 0x7f0c0000

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "defaultCityId":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v6, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "cities"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    iget-object v6, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "isFirstBoot"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    .end local v1    # "defaultCityId":Ljava/lang/String;
    :cond_0
    return-object v5

    .line 245
    :cond_1
    iget-object v6, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "cities"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "chooses":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 247
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "sac":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 249
    aget-object v6, v4, v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/deskclock/worldclock/ClockCityUtils;->getCityNameByWeatherID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 251
    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isSamelanguage()Z
    .locals 4

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 261
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "language"

    const-string v3, "zh-rCN"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "language":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getSystemLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private refreshListView()V
    .locals 4

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->isSamelanguage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/worldclock/ClockCityUtils;->loadTimeZone(Landroid/content/Context;)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->initWeatherIds()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mWeatherIds:Ljava/util/ArrayList;

    .line 145
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mWeatherIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 146
    new-instance v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04002b

    iget-object v3, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mWeatherIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/deskclock/worldclock/WorldClockAdaptor;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdaptor;

    .line 148
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdaptor;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->setListView(Landroid/widget/ListView;)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mEmptLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 274
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x904000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mstrFormat:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->context:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mDefaultHeightSplitActionBar:I

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/DeskClockMainActivity;

    invoke-virtual {v1}, Lcom/android/deskclock/DeskClockMainActivity;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 176
    const/16 v1, 0x65

    const v2, 0x7f0c006d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020002

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 179
    const/16 v1, 0x66

    const v2, 0x7f0c0024

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02005a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 183
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 184
    iget v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSplitHeight()I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    .line 186
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mFootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 187
    iget v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mFootView:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    invoke-direct {v2, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mFootView:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mDefaultHeightSplitActionBar:I

    invoke-direct {v2, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const v0, 0x7f04002a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 99
    .local v11, "view":Landroid/view/View;
    const v0, 0x7f10003e

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->new_am_pm:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f100014

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DigitalClock;

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->digitalClock:Lcom/android/deskclock/DigitalClock;

    .line 101
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->digitalClock:Lcom/android/deskclock/DigitalClock;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->new_am_pm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/DigitalClock;->setNewAmPmTx(Landroid/widget/TextView;)V

    .line 102
    const v0, 0x7f100089

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/LewaAnalogClock;

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->myAnalogClock:Lcom/android/deskclock/LewaAnalogClock;

    .line 104
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->myAnalogClock:Lcom/android/deskclock/LewaAnalogClock;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x7f020056

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/LewaAnalogClock;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 107
    const-string v0, "Europe/Budapest"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 108
    .local v10, "timeZone":Ljava/util/TimeZone;
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 109
    .local v6, "calendar":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->myAnalogClock:Lcom/android/deskclock/LewaAnalogClock;

    invoke-virtual {v0, v6}, Lcom/android/deskclock/LewaAnalogClock;->setmCalendar(Ljava/util/Calendar;)V

    .line 110
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->digitalClock:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v0, v6}, Lcom/android/deskclock/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 111
    const v0, 0x102000a

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    .line 112
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->addFooterViewForSplitBar()V

    .line 113
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 114
    new-instance v0, Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;-><init>(Lcom/android/deskclock/worldclock/WorldClockFragment;Lcom/android/deskclock/worldclock/WorldClockFragment$1;)V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mCallback:Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;

    .line 115
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mCallback:Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 116
    const v0, 0x1020004

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mEmptLayout:Landroid/widget/LinearLayout;

    .line 117
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mEmptLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f10003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 119
    .local v7, "emptyImage":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mEmptLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f10003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 121
    .local v8, "emptyText":Landroid/widget/TextView;
    const v0, 0x7f0c006c

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 122
    const v0, 0x7f0200be

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "choosecity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 125
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 126
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->refreshListView()V

    .line 127
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "update_worldclock_listview"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mcontext:Landroid/app/Activity;

    .line 130
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mcontext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->updateListView:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-object v11
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 168
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mcontext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->updateListView:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/deskclock/worldclock/DeleteWorldClockCity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selectPosition"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v1, "weatherIds"

    iget-object v2, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mWeatherIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 285
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/deskclock/worldclock/AddWorldClockCity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 222
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_1

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v2, "lewa.intent.action.set_date"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 227
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 138
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "language"

    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getSystemLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    return-void
.end method
